

#-------------------------------------------------------------------------------------------------------------#
								#Code is literature made for computers#
									#Literature is a form of art#
							#Code should flow beautifuly like a work of art#
#-------------------------------------------------------------------------------------------------------------#
# Call methods
# Method for text display format
def textline(sentence)
	if sentence.class == String
		return "|" + sentence.center(90, '-').tr(" ", "-") + "|"
	end
end
# Method for creating rating values
def rating(option_1, option_2, user_choice)
	case user_choice
	when option_1
		return 1 # Return a rating value
	when option_2
		return 2 # Return a rating value
	end # End option case
end # End Rating Method

# Method for spacer lines
def spacer(line_count, speed)
	counter = 0
	until counter == line_count
		output_text("", speed)
		counter += 1
	end
end

# Method for displaying text
def output_text(text, speed)
	text_temp = text
	puts textline(text_temp)
	case speed
	when :blink, nil
		sleep 0.15
	when :quick
		sleep 0.5
	when :slight
		sleep 1
	when :pause
		sleep 2
	when :pass
		sleep 0
	end
end

# sleep time variable
blink = 0.15
quick = 0.5
slight = 1
pause = 2

# Intro
puts "Make sure your display window length is at least 92 and then press enter to continue"
alright = gets.chomp
output_text("", :pass)
puts "|--**************************************************************************************--|"
puts "|--*------------------------------------------------------------------------------------*--|"
puts "|--*----------------------------------++++++++++++++++----------------------------------*--|"
puts "|--*----------------------------------++GENESIS-ARCH++----------------------------------*--|"
puts "|--*----------------------------------++++++++++++++++----------------------------------*--|"
puts "|--*------------------------------------------------------------------------------------*--|"
puts "|--**************************************************************************************--|"
output_text("", :pass)
puts "********************************************************************************************"


# Make some lines
spacer(6, :quick)


# Credits
output_text("A Wyncode Student Project", :quick)
output_text("", :quick)
output_text("By Frank Ortiz", :quick)
output_text("", :quick)


# Make some lines
spacer(6, :quick)

# Title and lines
output_text("Welcome to the Genesis Arch Project", :quick)
spacer(6, :quick)


# Begin journey
output_text("Type 'Ready' to begin your journey.", :quick)
output_text("", :quick)


# Is user ready?
start_journey = false
until start_journey 
	case gets.chomp.downcase
	when "ready"
		output_text("", :quick)
		output_text("Very well let us begin", :quick)
		output_text("", :quick)
		start_journey = true # Journey begins
	else
		output_text("", :quick)
		output_text("Type 'Ready' to begin your jouryney", :quick)
		output_text("", :quick)
		# Repeat until start_journey
	end # Ends case start_journey
end # Ends until start_journey


# Pause for suspense
puts "............................................................................................"
sleep quick
puts "...............................Please wait while we create.................................."
sleep quick
puts "..................................a new reality for you....................................."
sleep quick
puts "............................................................................................"
sleep pause


# redo with random star positions on dotted line and re-comment
beginning_stars = 0
until beginning_stars == 30
	starry_beginnings = [ 
		"...*.................*........................",
		"........*............................*........",
		".......*........*.............................",
		".*.......................*....................",
		"....................................*.........",
		"...............*............*.................",
		"..........................................*...",
		"........*...............*.....................",
		"...............*.................*............",
		"...*.............................*............",
	]
	twinkle = starry_beginnings.sample
	twinkle2 = starry_beginnings.sample
	print "#{twinkle}"
	puts "#{twinkle2}"
	sleep blink
	beginning_stars += 1
end
# 30.times { puts method(item)}

#ask which world
output_text("", :blink)
output_text("Choose your world", :blink)
puts "|--------------Phenor------------------------or--------------------Xenitix-IV--------------|"
sleep blink
output_text("", :blink)


# User choses world
world_check = false # Determine if user has finalized world choice
until world_check


	# Which world
	world_chosen = false
	until world_chosen # Was a world chosen?
		case (gets.chomp + " ").downcase.gsub!(/\s+/,'')
		when "phenor"
			user_world = "Phenor"
			output_text("", :blink)
			output_text("You have chosen 'Phenor'", :blink)
			output_text("A world encased in fields of blue flames and icy grass imune to all heat", :blink)
			output_text("", :blink)
			world_chosen = true # World chosen
		when "xenitixiv", "xenitix-iv"
			user_world = "Xenitix IV"
			output_text("You have chosen 'Xenitix IV'", :blink)
			output_text("A world covered in purple sand and shadowed by two beautiful green moons", :blink)
			output_text("", :blink)
			world_chosen = true # World chosen
		else
			output_text("", :blink)
			output_text("Please type in the world of your choice", :blink)
			output_text("Chose your world", :blink)
			puts "|--------------Phenor------------------------or--------------------Xenitix-IV--------------|"
			sleep blink
			output_text("", :blink)
			# World not chosen
		end # Ends case world_chosen
	end # Ends until world_chosen


	# Ask user if user is happy with world chosen
	output_text("Are you satisfied with your choice?", :blink)


	# User response to happiness query
	answer_sat = false # Is user happy with selection
	until answer_sat

		case gets.chomp.downcase
		when "yes"
			answer_sat = true # User entered valid response
			world_check = true # World selection finalized
			u_world = user_world

		when "no"
			answer_sat = true # User entered valid response
			world_check = false # World selection not finalized
			
			output_text("", :blink)
			output_text("Please type in the world of your choice", :blink)
			output_text("Choose your world", :blink)
			puts "|--------------Phenor------------------------or--------------------Xenitix-IV--------------|"
			sleep blink
			output_text("", :blink)
		else
			output_text("Please enter Yes or No", :blink)
			answer_sat = false # User entered invalid response

		end # Ends case answer_sat
	end # Ends until answer_sat
end # Ends world_check




# Ask if user would like to rename the world
answer_re_name = false # Did the user answer
until answer_re_name 

	output_text("", :blink)
	output_text("Would you like to rename your world?", :blink)
	output_text("", :blink)

	case gets.chomp.downcase
	when "yes"
			answer_re_name = true # question answered
			world_rename = false # go to re-naming
		when "no"
			answer_re_name = true # question answered
			answer_re_nameame = user_world.downcase
			world_rename = true # skip re-naming
		else
			output_text("", :blink)
			output_text("Please enter Yes or No", :blink)
			output_text("", :blink)
			answer_re_name = false # question is not answered
	end # case re_name
end # until answer_re_name


# User re-names the world
until world_rename # Check if question is answered
	output_text("", :blink)
	output_text("What would you like to name your world?", :blink)
	output_text("", :blink)
	new_world = gets.chomp

	if new_world.length < 3
		output_text("", :blink)
		output_text("Please enter a name for your world", :blink)
		output_text("at least three characters long", :blink)
		output_text("", :blink)
		world_rename = false #question is not answered
		sleep blink
	else
		world_rename = true #question is answered
		user_world  = new_world.center(90, '-').tr(" ", "-")
		sleep blink
		output_text("", :blink)
		output_text("You have entered", :blink)
		puts textline(user_world)
		output_text("", :blink)

	end #ends if new_world
end #ends until world_rename

output_text("In the creation of the new world of #{user_world}", :blink)
output_text("A new species is born, and you are it's Creator", :blink)

species_choose = false
until species_choose
	output_text("Will this species be aggressive or will it be passive?", :blink)
	case gets.chomp.downcase
	when "passive"
		output_text("You have choosen to create a passive creature", :blink)
		output_text("Hopefully your creature will become intelligent enough to survive", :blink)
		species_choose = true
	when "aggressive"
		output_text("You have choosen to create an aggressive creature", :blink)
		output_text("Your creature will be feared throughout #{user_world}")
		species_choose = true

	else
		output_text("Please type 'Passive' or 'Aggressive'", :blink)
	end
end

output_text("As thousands of years pass, your creature's species advances", :blink)
output_text("What does their DNA have in store for them?", :blink)

species_dna = false
until species_dna
	case gets.chomp.downcase
	when "large", "large and bulky", "bulky"
		output_text("The years will be rough", :blink)
		output_text("but not as rough as the hide on this creature's back", :blink)
		species_type = "bulky"
		species_dna = true
	when "fast", "fast and nimble", "nimble"
		output_text("Through high agility and a quick mind", :blink)
		output_text("your creature will be a step above the rest", :blink)
		species_type = "fast"
		species_dna = true
	end
	output_text("Will they become large and bulky or fast and nimble", :blink)
end


#-------------------------------------------------------------------------------------------------------------#
# CODE IS RUNNING CORRECTLY UP TO THIS POINT
#-------------------------------------------------------------------------------------------------------------#




