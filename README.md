## Инсталация

- `bundle install` - инсталира необходимите библиотеки
- `bundle exec rake db:setup` - създава базата от данни и таблиците

## Полезни команди

- `bundle exec ruby app.rb` - стартиране на development сървър
- `bundle exec rake db:migrate` - Ъпдейт на базата от данни след създаване на миграция
- `bundle exec rspec` - Пуска автоматизираните тестове
- `bundle exec rspec spec/models` - Пуска само тестовете за моделите
