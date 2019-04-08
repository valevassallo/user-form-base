# Mini Assignment

Once you clone this repo perform the following steps:

``` shell
bundle install
bin/rails db:setup
bin/rails s
```

You should now have the application running at http://localhost:3000

# The Application

This is a user registration form. Here are some important files to
keep in mind:

- `app/models/user.rb` is the user model. validations and callbacks go
  here.
- `app/controllers/users_controller.rb` is the user controller. action
  filters go here.
- `app/views/users/new.html.erb` is the view template of the
  form. the errors need to be displayed here.
- `config/routes.rb` shows you which resources and routes are
  available.

# Your Mission

The form should have following fields and restrictions, note that all
fields are required unless stated otherwise:

| Field                 | Restriction                                            |
|-----------------------|--------------------------------------------------------|
| First Name            | Must be between 2 and 60 characters                    |
| Last Name             | Must be between 2 and 60 characters                    |
| Username              | Must be unique. Must be between 2 and 20 characters    |
| Email                 | Must be unique. Must be a valid email.                 |
| Email Confirmation    | Must be the same as the email.                         |
| Password              | At least 8 characters. Must contain at least 1 number. |
| Password Confirmation | Must the same as the password.                         |
| Password Hint         | Optional. Must be 100 characters max.                  |

If there is an error in a field, display it at the beginning of the form.
