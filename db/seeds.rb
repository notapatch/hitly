require "factory_bot"

include FactoryBot::Syntax::Methods

Link.destroy_all
User.destroy_all

create_list(:user, 3) do |u, i|
  create_list(:link, 5, user: u)
end
