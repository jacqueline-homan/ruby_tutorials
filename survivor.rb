# loading survivor.rb depends on ContactInfo.rb
# Go into irb, and enter load 'ContactInfo.rb'
# then enter load 'survivor.rb'
# But we don't always want to do this, so
# we put "load 'contact_info.rb' " at the top 
# of this file. Now you try it :)
load 'contact_info.rb'

class Survivor 
  include ContactInfo 
  attr_accessor :first_name, :last_name, :email, :city, :state, :zipcode
end

class Safehouse
  include ContactInfo
  attr_accessor :ngo
end

class Socialworker < Safehouse
  attr_accessor :first_name, :last_name, :email, :ngo, :city, :state, :zipcode
end