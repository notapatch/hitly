class DashboardsController < ApplicationController
  def show
    @links = current_user.links.order(created_at: :desc)
  end
end
