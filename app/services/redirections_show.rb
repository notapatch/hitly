class RedirectionsShow
  def show_redirection(redirection_params)
    id = Bivariate.decode(redirection_params[:short_url])

    link = Link.find_by(id: id)
    if link
      Result.new(found: true, link: link)
    else
      Result.new(found: false, link: nil)
    end
  end

  class Result
    attr_reader :link

    def initialize(found:, link: nil)
      @found = found
      @link = link
    end

    def found?
      @found
    end
  end
end
