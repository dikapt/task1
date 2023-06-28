require 'date'
module Validation
  def self.valid_name?(string)
    if string.length <= 40 && string =~ /\A[a-zA-Z-]+\z/
      true
    else
      false
    end
end

def self.valid_inn?(string)
  if string =~ /\A[A-Z]{2}\d{10}\z/
    true
  else
    false
  end
end

def self.after_date?(date)
  date < Date.today
end
end
puts Validation.valid_name?("Maria-Anna")
puts Validation.valid_name?("Serjio2")

puts Validation.valid_inn?("AZ1234543456")
puts Validation.valid_inn?("AC12345678901")

puts Validation.after_date?(Date.new(2003, 9, 30))
puts Validation.after_date?(Date.today)