require 'factory_girl'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end

FactoryGirl.define do

  factory :message do
    user_name 'John Doe'
    text 'Sample message text'
  end

end
