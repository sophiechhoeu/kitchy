class RegistrationsController < Devise::RegistrationsController

  private

  def after_sign_up_path_for(resource)
    new_profile_path
  end

  def after_sign_in_path_for(resource)
    root_path
  end

end
