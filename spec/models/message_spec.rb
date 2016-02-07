require 'spec_helper'

RSpec.describe Message do
  describe '#anonymous?' do
    it 'is true when there is no user name' do
      message = create :message, user_name: nil

      # The following is the same as `expect(message.anonymous?).to be true`
      expect(message).to be_anonymous
    end

    it 'is false when there is user name specified' do
      message = create :message, user_name: 'John'

      expect(message).to_not be_anonymous
    end

    it 'detects an empty name' do
      message = create :message, user_name: ''

      expect(message).to be_anonymous
    end
  end
end
