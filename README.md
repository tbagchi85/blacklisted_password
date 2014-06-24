# BlacklistedPassword  [![Code Climate](https://codeclimate.com/github/tbagchi85/blacklisted_password.png)](https://codeclimate.com/github/tbagchi85/blacklisted_password)

This is a Password black listing gem where you can add Blacklisted words in YAML file.

## Installation

Add this line to your application's Gemfile:

    gem 'blacklisted_password'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blacklisted_password

Then generate required files as follow:-

    $ rails g blacklisted:install

## Usage

    In your Model just add :--

    require 'blacklisted_password'

    validates :password, blacklist: true

## Contributing

1. git clone `https://github.com/tbagchi85/blacklisted_password.git`
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
