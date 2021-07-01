module ApplicationHelper
  def short_url(id)
    return "" unless id

    "#{root_url}#{Bivariate.encode(id)}"
  end
end
