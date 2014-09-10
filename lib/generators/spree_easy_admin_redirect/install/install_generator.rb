module SpreeEasyAdminRedirect
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def show_message
        puts "No need to install anything :)"
      end
    end
  end
end
