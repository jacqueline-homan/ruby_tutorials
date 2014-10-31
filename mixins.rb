module ContactInfo
  attr_accessor :first_name, :last_name, :city, :state, :zipcode, :email, :ngo

  def full_name
  	return @first_name + " " + @last_name
  end

  def city_state_zip
  	czs = @city
  	czs += ", #{@state}" if @state
  	csz += ", #{@zipcode}" if @zipcode
  	return czs
  end

  def anti_trafficking_ngo
  	charity += "#{@ngo}" if @ngo
  	return charity
  end
end

class Survivor 
  include ContactInfo 
  
  end
end

class Safehouse
end

class Socialworker
end


  	