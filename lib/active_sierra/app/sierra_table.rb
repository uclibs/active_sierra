class SierraTable < ActiveRecord::Base
	self.abstract_class = true
	@config = YAML.load(File.read("#{Rails.root.to_s}/config/sierra.yml"))
	#@config = YAML.load(File.read('/Users/vanmiljf/Applications/sierra_testing/config/sierra.yml'))
	establish_connection(@config['sierra'])
end