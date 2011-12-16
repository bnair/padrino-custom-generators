# *TestGenerator*: A Padrino generator
# ===Overview
# A sample Padrino generator to test extending the generator functionality
# in Padrino::Generators
##

module Padrino
  module Generators
    ##
    # Defines a generic do nothing generator for testing custom generators
    #
    class TestGenerator < Thor::Group
  
      # Add this generator to our padrino-gen
      Padrino::Generators.add_generator(:test_generator, self)
  
      # Define the source template root
      def self.source_root; File.expand_path(File.dirname(__FILE__)); end
      # Defines the "banner" text for the CLI.
      def self.banner; "padrino-gen test_generator [model]"; end

      include Thor::Actions
      include Padrino::Generators::Actions
      include Padrino::Generators::Components::Actions

      desc "Description:\n\n\tpadrino-gen test_generator model(s)"
      argument :models, :desc => "The name(s) of your model(s)", :type => :array
      class_option :root, :desc => "The root destination", :aliases => '-r', :type => :string

      # Show help if no argv given
      require_arguments!

      # do nothing
      def test_generator
        self.destination_root = options[:root]
        if in_app_root?
          models.each do |model|
            puts "Creating model #{model}"
          end
        else
          say "You are not at the root of a Padrino application! (config/boot.rb not found)"
        end
      end
    end
  end
end

