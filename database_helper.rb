require 'rubygems'
require 'json'

require 'couchrest'

DB = CouchRest.database!("dude:5984/stenno")

class CalendarObject < CouchRest::ExtendedDocument  
  use_database DB
  property :name
  property :others #z.b. 123412512342134
  
end

class Client < CalendarObject
  property :address
end

class Event < CalendarObject
  property :content
end

class Project < CalendarObject
end
