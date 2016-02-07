require 'spec_helper'

RSpec.describe 'guestbook', type: :feature do
  describe 'message creation' do
    before { visit '/' }

    it 'can create a message without specifying a user name' do
      within 'form' do
        fill_in 'Съобщение', with: 'тестово съобщение'
      end

      click_button 'Изпращане'

      expect(page).to have_content 'Съобщението беше записано успешно'

      message = Message.first
      expect(message.text).to eq 'тестово съобщение'
      expect(message).to be_anonymous
    end

    it 'can create a message with a name' do
      within 'form' do
        fill_in 'Име', with: 'Пешо'
        fill_in 'Съобщение', with: 'тестово съобщение'
      end

      click_button 'Изпращане'

      expect(page).to have_content 'Съобщението беше записано успешно'

      message = Message.first
      expect(message.user_name).to eq 'Пешо'
      expect(message.text).to eq 'тестово съобщение'
    end

    it 'shows an error when the text is missing' do
      click_button 'Изпращане'

      expect(page).to have_content 'Съобщението съдържа грешки'
      expect(Message.all).to be_empty
    end
  end

  describe 'message display' do
    it 'shows messages contained in the database' do
      create :message, text: 'съобщение 1'
      create :message, user_name: 'Иван', text: 'съобщение 2'

      visit '/'

      expect(page).to have_content 'съобщение 1'
      expect(page).to have_content 'Иван: съобщение 2'
    end

    it 'displays anonymous messages' do
      create :message, user_name: '', text: 'съобщение 1'

      visit '/'

      expect(page).to have_content 'Анонимен: съобщение 1'
    end
  end
end
