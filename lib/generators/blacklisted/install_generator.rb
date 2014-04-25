require 'rails/generators'

module Blacklisted
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../..', __FILE__)

    def copy_files
      copy_file "config/blacklist_password.yml",        "config/blacklist_password.yml"
      copy_file "config/blacklist_password.rb",          "config/initializers/blacklist_password.rb"
    end

  end
end