

require 'yaml'

class DataHelper
	@@users = nil

	class << self

		USERS_FILE = File.join(File.dirname(__FILE__), '../res/users.yaml')
		
		begin
			@@users = YAML.load_file(USERS_FILE)
		rescue Exception => e
			raise "Error while loading resource file - #{e.message}"
		end

		def get_user(user)
			raise "Unable to find user - \'#{user}\' in users.yaml - " if !@@users.has_key?(user)
			@@users["#{user}"]
		end

		def get_password
			@@users["PASSWORD"]
		end

	end

end