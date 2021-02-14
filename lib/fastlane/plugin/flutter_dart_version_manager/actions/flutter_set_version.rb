require 'fastlane/action'
require_relative '../helper/flutter_dart_version_manager_helper'

module Fastlane
  module Actions
    class FlutterSetVersionAction < Action
      def self.run(params)
        # fastlane will take care of reading in the parameter and fetching the environment variable:
        UI.message "Started FlutterVersionManager"

        versionName = params[:version_name]
        versionCode = params[:version_code]
        path = params[:path_to_yaml]

        # Checking values
        if !File.exists?(path)
            raise 'File not found at path: "' + path + '" example: ../myFolder/pubspec.yaml'
        end
        unless !versionName.to_s.strip.empty?
            raise "newVersion must not be null"
        end


        #Processing string
        versionToSet = "version: "
        unless versionCode.to_s.strip.empty?
            versionToSet.concat(versionName)
            versionToSet.concat('+')
            versionToSet.concat(versionCode)
        else
            versionToSet.concat(versionName)
        end


        #Read data
        lines = IO.readlines(path).map do |line|
        if (line.include? "version:")
            versionToSet
        else
            line
        end
        end

        # Write changes
        File.open(path, 'w') do |file|
          file.puts lines
        end


      end

      def self.description
        "A version manager for flutter"
      end

      def self.authors
        ["Marvin Moeltgen"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "Later"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(
                                      key: :version_name,
                                      env_name: "version_name", 
                                      description: 'The new version to be set "{major}.{minor}.{patch}"', 
                                      is_string: true, 
                                      verify_block: proc do |value|
                                        UI.user_error!('No version given, provide using `newVersion: "the version"`') unless (value and not value.empty?)
                                      end),
          FastlaneCore::ConfigItem.new(
                                      key: :version_code,
                                      env_name: "version_code", 
                                      description: "The new build version", 
                                      optional: true,
                                      verify_block: proc do |value|
                                          UI.user_error!("No version code given, pass using `version_code: 'your version_code'`") unless (value and not value.empty?)
                                      end),
          FastlaneCore::ConfigItem.new(
                                      key: :path_to_yaml,
                                      env_name: "path_to_yaml",
                                      description: "The path to the pubspec.yaml file",
                                      is_string: true, 
                                      default_value: "../pubspec.yaml") 
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end