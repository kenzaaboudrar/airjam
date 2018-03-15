class RegistrationsController < Devise::RegistrationsController

  def after_sign_up_path_for(resource_or_scope)
    edit_user_path(current_user)
  end
end
