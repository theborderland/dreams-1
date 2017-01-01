require 'google/apis/script_v1'
require 'googleauth'
require 'googleauth/stores/file_token_store'

require 'fileutils'

##
# Example taken from https://developers.google.com/apps-script/guides/rest/quickstart/ruby
##
SCRIPT_ID = ENV['GOOGLE_APPS_SCRIPT']
OOB_URI = 'urn:ietf:wg:oauth:2.0:oob'
APPLICATION_NAME = ENV['GOOGLE_APPS_NAME']
CLIENT_SECRETS_PATH = 'client_secret.json'
CREDENTIALS_PATH = File.join(Dir.home, '.credentials',
                             "script-ruby-quickstart.yaml")
SCOPE = 'https://www.googleapis.com/auth/drive'


  ##
  # Ensure valid credentials, either by restoring from the saved credentials
  # files or intitiating an OAuth2 authorization. If authorization is required,
  # the user's default browser will be launched to approve the request.
  #
  # @return [Google::Auth::UserRefreshCredentials] OAuth2 credentials
  def authorize
    FileUtils.mkdir_p(File.dirname(CREDENTIALS_PATH))

    client_id = Google::Auth::ClientId.from_file(CLIENT_SECRETS_PATH)
    token_store = Google::Auth::Stores::FileTokenStore.new(file: CREDENTIALS_PATH)
    authorizer = Google::Auth::UserAuthorizer.new(
      client_id, SCOPE, token_store)
    user_id = 'default'
    credentials = authorizer.get_credentials(user_id)
    if credentials.nil?
      url = authorizer.get_authorization_url(
        base_url: OOB_URI)
      puts "Open the following URL in the browser and enter the " +
           "resulting code after authorization"
      puts url
      code = gets
      credentials = authorizer.get_and_store_credentials_from_code(
        user_id: user_id, code: code, base_url: OOB_URI)
    end
    credentials
  end

  # Initialize the API
  service = Google::Apis::ScriptV1::ScriptService.new
  service.client_options.application_name = APPLICATION_NAME
  service.authorization = authorize

  # Create an execution request object.
  request = Google::Apis::ScriptV1::ExecutionRequest.new(
    function: 'createDream',
    parameters: ["galbra+20@gmail.com", 21, "My dream name"]
  )

  begin
    # Make the API request.
    resp = service.run_script(SCRIPT_ID, request)

    if resp.error
      # The API executed, but the script returned an error.

      # Extract the first (and only) set of error details. The values of this
      # object are the script's 'errorMessage' and 'errorType', and an array of
      # stack trace elements.
      error = resp.error.details[0]

      puts "Script error message: #{error['errorMessage']}"

      if error['scriptStackTraceElements']
        # There may not be a stacktrace if the script didn't start executing.
        puts "Script error stacktrace:"
        error['scriptStackTraceElements'].each do |trace|
          puts "\t#{trace['function']}: #{trace['lineNumber']}"
        end
      end
    else
      folder_set = resp.response['result']
      puts folder_set
      folder_set.each do |id, folder|
        puts "#{folder} (#{id})"
      end
    end
  rescue Google::Apis::ClientError => e
    # The API encountered a problem before the script started executing.
    puts "Error calling API!"
    puts sprintf('Caught error %s', e) 
  end
