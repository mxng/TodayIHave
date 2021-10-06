# README

Users can create an account and add in what they have done for the day.
Only one post is allowed a day for each unique user.

This is a work-in-progress.

This is run on Rails 6.1.4 with several gems such as simpleform, acts as taggable, and devise.

### Set up

After installing the dependencies with 
```ruby
bundle install
```

```ruby
yarn install
```

```ruby
rails db:migrate
```

go to the directory in the console and type in 
```ruby
rails s
```
then go to 
```ruby
localhost:3000
```
on your favourite browser.
