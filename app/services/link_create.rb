class LinkCreate
  def create_link(user:, link_params:)
    link = user.links.build(link_params)
    uri = Addressable::URI.parse(link.long_url)
    return Result.new(created: false, link: nil) unless uri

    #
    # Hack hardcoding it to http
    #
    link.long_url = "http://#{link.long_url}" unless uri.scheme

    if link.save
      Result.new(created: true, link: link)
    else
      Result.new(created: false, link: nil)
    end
  end

  class Result
    attr_reader :link

    def initialize(created:, link: nil)
      @created = created
      @link = link
    end

    def created?
      @created
    end
  end
end
