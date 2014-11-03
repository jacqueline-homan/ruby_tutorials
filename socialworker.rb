# How do we get this source file loaded?

load 'contact_info.rb'

class Socialworker < Safehouse
  attr_accessor :first_name, :last_name, :email, :ngo, :city, :state, :zipcode
end