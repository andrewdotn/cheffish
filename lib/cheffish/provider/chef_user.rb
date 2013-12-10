require 'cheffish/actor_provider_base'
require 'cheffish/resource/chef_user'
require 'chef/chef_fs/data_handler/user_data_handler'

module Cheffish
  module Provider
    class ChefUser < Cheffish::ActorProviderBase

      def whyrun_supported?
        true
      end

      action :create do
        create_actor
      end

      action :delete do
        delete_actor
      end

      #
      # Helpers
      #
      # Gives us new_json, current_json, not_found_json, etc.

      def actor_type
        'user'
      end

      def resource_class
        Cheffish::Resource::ChefUser
      end

      def data_handler
        Chef::ChefFS::DataHandler::UserDataHandler.new
      end

      def keys
        {
          'name' => :name,
          'admin' => :admin,
          'email' => :email,
          'password' => :password,
          'external_authentication_uid' => :external_authentication_uid,
          'recovery_authentication_enabled' => :recovery_authentication_enabled
        }
      end

    end
  end
end