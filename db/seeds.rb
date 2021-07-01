require "factory_bot"

include FactoryBot::Syntax::Methods

User.destroy_all

create_list(:user, 2)
