ActiveAdmin.register AwardWin do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :year_won, :winner_type, :winner_id, :award_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:year_won, :winner_type, :winner_id, :award_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
