class LinksController < ApplicationController
  def new
    @link = current_user.links.build
  end

  def create
    result = LinkCreate.new.create_link(user: current_user, link_params: link_params)

    if result.created?
      redirect_to dashboards_path, notice: "Link was successfully created."
    else
      #
      # TODO: The unhappy branch
      #
      render :new
    end
  end

  private

  def link_params
    params.require(:link).permit(:long_url)
  end
end
