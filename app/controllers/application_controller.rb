class ApplicationController < ActionController::Base
  layout :layout
  before_action :authenticate_user!

  def after_sign_in_path_for(_resource)
    dashboards_path
  end

  private

  def layout
    # only turn it off for login pages:
    is_a?(Devise::SessionsController) ? "simple" : "application"
  end
end
