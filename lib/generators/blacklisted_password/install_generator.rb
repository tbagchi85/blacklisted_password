require 'rails/generators/active_record'
require 'securerandom'

module Goldencobra
  module Generators
    class InstallGenerator < ActiveRecord::Generators::Base
      desc "This will create a blacklisted yml file"


      def self.source_root
        File.expand_path("../config", __FILE__)
      end

      def create_migrations
        Dir["#{self.class.source_root}/config/*.rb"].sort.each do |filepath|
          name = File.basename(filepath)
          template "config/#{name}", "config/#{name}"
          sleep 1
        end
      end

    end
  end
end