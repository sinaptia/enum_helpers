# EnumHelpers

This gem allows you to manipulate the enumerables, accessing them on a more "human" and simpler way, it is a code that we use throughout various projects on our organization, so we decided to share it as it may be useful for someone else :)

It supports internationalization!
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'enum_helpers'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install enum_helpers

## Usage

Let's take as example a model called `user.rb` that has an enumerable that defines different roles.

### In your model

```ruby
class User < ApplicationRecord

  enum role: {default: 0, admin: 1, guest: 2}
  enum_helpers :role

end
```

Then you will have available the following commands:

```ruby
irb > User.role_options
=> [["Default", "default"], ["Admin", "admin"], ["Guest", "guest"]]

irb > User.last.role_name

=> "Guest"
```

You can translate everything through `activerecord.enums.your_model.your_enum` inside the translation file and it should look similar to this:

```yml
activerecord:
  enums:
    user:
      role:
        admin: Admin
        default: Default
        guest: Guest
```

Here is an example of how are we using it inside a form view:

```erb
<%= form_with(model: @user) do |form| %>
  <%= form.label :role %>
  <%= form.collection_select :role, User.role_options, :last, :first, {} %>
<% end %>
```

## Contributing

Feel free to collaborate with this project! Just create a pull request.
## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
