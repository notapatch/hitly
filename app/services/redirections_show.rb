class RedirectionsShow
  def show_redirection(redirection_params)
    id = Bivariate.decode(redirection_params[:short_url])

    link = Link.find_by(id: id)
    if link
      Link.increment_counter(:hit_counts, link.id, touch: true)
      Result.new(found: true, link: link.reload)
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
