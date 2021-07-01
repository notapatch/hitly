class RedirectionsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show]
  def show
    result = RedirectionsShow.new.show_redirection(params)
    redirect_to result.link.long_url if result.found?
  end
end
