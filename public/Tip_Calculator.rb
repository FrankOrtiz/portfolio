answered = false

until answered == true
#ask bill amount
puts "How much is the bill?"
bill = gets.chomp
if bill.to_f > 0
    answered = true
else
   puts "-Answer with numbers only"

end
end
if answered == true
    answered = false
end
#re-state amount entered
puts "The bill is $#{bill.to_f}"
bill = bill.to_f
#bill is now a float and can be used to calculate
until answered == true
#time to determine the tip ammount
puts "How much percent would you like to tip?"
puts "Or rate your service as: poor, decent, good, great, or perfect"
service = gets.chomp
#gets user input as string
rate_service = ["poor", "decent", "good", "great", "perfect"]
#1st check if number was input


if service.to_f > 0 
    tip = service.to_f
    percent = tip / 100
    #determine tip %
    answered = true

#2nd check if input matches an array item
    elsif rate_service.each.include?(service.downcase)
#if input matches an array item determine which 
#and then return variable to break loop
    answered = true
    case service.downcase
    when "poor"
    percent = 0.05
    when "decent"
    percent = 0.1
    when "good"
    percent = 0.15
    when "great"
    percent = 0.2
    when "perfect"
    percent = 0.25

#loop does not end until variable is over 0

else
    puts "-Please leave a tip"
    percent = 0

end #ends until
end #ends if
end #ends case





tip = bill * percent
puts "The tip is $#{tip.round(2)}"
total = bill + tip
puts "The total is $#{total}"


    answered =false

a2 = false


until a2 == true


until answered == true
puts "Are you spliting the check? (yes/no)"
split = gets.chomp


case split.downcase
   
when "yes"
    a3 = false
    until a3 == true
    puts "How many ways would you like to split the check?"
    ways = gets.chomp

    if ways.to_f == 1 
        total = total
        a2 = true
        a3 = true
    elsif ways.to_f > 1
        total = total / ways.to_f
        a2 = true
        a3 = true
    else
        puts "-Please add a numeric value"
    end
end

    answered = true
    puts "Your split check is $#{total.round(2)} per person"
when "no"
    puts "The check is not being split."
    answered = true
    a2 = true
    puts "Your total is $#{total.round(2)}"

else
    puts "-Please type yes or no"



end #ends case

end #ends until answered

end #ends until a2


