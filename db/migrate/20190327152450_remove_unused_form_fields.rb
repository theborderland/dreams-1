class RemoveUnusedFormFields < ActiveRecord::Migration[5.0]
  def change
  remove_column :camps, :safetybag_crewsize, :integer
  remove_column :camps, :safetybag_plan, :string
  remove_column :camps, :safetybag_builder, :string
  remove_column :camps, :safetybag_safetyer, :string
  remove_column :camps, :safetybag_mooper, :string
  remove_column :camps, :safetybag_materials, :string
  remove_column :camps, :safetybag_work_in_height, :string
  remove_column :camps, :safetybag_tools, :string
  remove_column :camps, :safetybag_grounding, :string
  remove_column :camps, :safetybag_safety, :string
  remove_column :camps, :safetybag_electricity, :string
  remove_column :camps, :safetybag_daily_routine, :string
  remove_column :camps, :safetybag_other_comments, :string
  remove_column :camps, :safetybag_firstMemberName, :string
  remove_column :camps, :safetybag_firstMemberEmail, :string
  remove_column :camps, :safetybag_secondMemberName, :string
  remove_column :camps, :safetybag_secondMemberEmail, :string
  remove_column :camps, :dreamprop_philosophy, :string
  remove_column :camps, :dreamprop_inspiration, :string
  remove_column :camps, :dreamprop_interactivity_audience_participation, :string
  remove_column :camps, :dreamprop_interactivity_is_fire_present, :boolean
  remove_column :camps, :dreamprop_interactivity_fire_present_desc, :string
  remove_column :camps, :dreamprop_interactivity_is_sound, :boolean
  remove_column :camps, :dreamprop_interactivity_sound_desc, :string
  remove_column :camps, :dreamprop_interactivity_is_fire_event, :boolean
  remove_column :camps, :dreamprop_interactivity_fire_event_desc, :string
  remove_column :camps, :dreamprop_community_is_installation_present_for_event, :boolean  
  remove_column :camps, :dreamprop_community_is_installation_present_for_public, :boolean 
  remove_column :camps, :dreamprop_community_is_context, :boolean
  remove_column :camps, :dreamprop_community_context_desc, :string
  remove_column :camps, :dreamprop_community_is_interested_in_publicity, :boolean
  remove_column :camps, :dreamprop_theme_is_annual, :boolean
  remove_column :camps, :dreamprop_theme_annual_desc, :string
  remove_column :camps, :spec_physical_description, :string
  remove_column :camps, :spec_length, :string
  remove_column :camps, :spec_width, :string
  remove_column :camps, :spec_height, :string
  remove_column :camps, :spec_visual_night_day, :string
  remove_column :camps, :spec_is_electricity, :boolean
  remove_column :camps, :spec_electricity_details, :string
  remove_column :camps, :spec_electricity_how, :string
  remove_column :camps, :spec_electricity_is_daytime, :boolean
  remove_column :camps, :spec_electricity_watt, :string
  remove_column :camps, :safety_is_heavy_equipment, :boolean
  remove_column :camps, :safety_equipment, :string
  remove_column :camps, :safety_how_to_build_safety, :string
  remove_column :camps, :safety_how, :string
  remove_column :camps, :safety_grounding, :string
  remove_column :camps, :safety_securing, :string
  remove_column :camps, :safety_securing_parts, :string
  remove_column :camps, :safety_signs, :string
  remove_column :camps, :location_info, :string
  remove_column :camps, :program_dream_name_he, :string
  remove_column :camps, :program_dream_name_en, :string
  remove_column :camps, :program_dreamer_name_he, :string
  remove_column :camps, :program_dreamer_name_en, :string
  remove_column :camps, :program_dream_about_he, :string
  remove_column :camps, :program_dream_about_en, :string
  remove_column :camps, :program_special_activity, :string
  remove_column :camps, :dreamscholarship_fund_is_from_art_fund, :boolean
  remove_column :camps, :dreamscholarship_fund_is_open_for_public, :boolean
  remove_column :camps, :dreamscholarship_budget_min_original, :intege
  remove_column :camps, :dreamscholarship_budget_max_original, :intege
  remove_column :camps, :dreamscholarship_budget_max_original_desc, :string
  remove_column :camps, :dreamscholarship_bank_account_info, :string
  remove_column :camps, :dreamscholarship_financial_conduct_is_intial_budget, :boolean
  remove_column :camps, :dreamscholarship_financial_conduct_intial_budget_desc, :string  
  remove_column :camps, :dreamscholarship_financial_conduct_money_raise_desc, :string
  remove_column :camps, :dreamscholarship_execution_potential_work_plan, :string
  remove_column :camps, :projectmgmt_is_theme_camp_dream, :boolean
  remove_column :camps, :projectmgmt_is_dream_near_theme_camp, :boolean
  remove_column :camps, :projectmgmt_dream_pre_construction_site, :string
  end
end


