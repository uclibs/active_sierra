require "active_sierra/version"
require 'active_sierra/app/sierra_table.rb'
require 'active_sierra/app/controllers/application_controller.rb'
require 'active_sierra/app/controllers/bib_views_controller.rb'
require 'active_sierra/app/controllers/order_views_controller.rb'
require 'active_sierra/app/controllers/resource_views_controller.rb'
require 'active_sierra/app/models/bib_record.rb'
require 'active_sierra/app/models/bib_record_item_record_link.rb'
require 'active_sierra/app/models/bib_view.rb'
require 'active_sierra/app/models/item_record.rb'
require 'active_sierra/app/models/order_record.rb'
require 'active_sierra/app/models/order_view.rb'
require 'active_sierra/app/models/phrase_entry.rb'
require 'active_sierra/app/models/resource_record.rb'
require 'active_sierra/app/models/resource_view.rb'
require 'active_sierra/app/models/varfield.rb'

#Dir["active_sierra/app/**/"].each {|file| require file }

module ActiveSierra
end
