# BlacklistedPassword

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'blacklisted_password'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blacklisted_password

I am still working on that Gem:-
    So Till the Generator file I create, please follow the following steps:-

    From your Root of your application:-

    $ touch config/blacklist_password.yml

    In the blacklist_password.yml file you have to write few blacklisted words

     $ ---
     $ demo
     $ abc
     $ black

     $ touch config/initializer/blacklisted_password.rb

      Into initializer file

     $ BLACKLISTED_PASSWORD = Rails.root.join("config/blacklist_password.yml")



     Then in you Model where you want to validate password :-

     $ require "blacklisted_password"
     $ BLACKLISTED_PASSWORD = Rails.root.join("config/blacklist_password.yml")
     $ validate :blacklist_password

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
