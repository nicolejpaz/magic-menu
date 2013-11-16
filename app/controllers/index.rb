require 'json'

get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/menu_create' do
	Menu.create(params[:menu])
	@menu_obj = {:name => params[:menu][:name]}


	#AJAX return below:
	# erb :_menu , :layout => false
end




###RELEASE 1
# Create a migration and model for Menus. - DONE
# Add validations. - What validations?
# Test your model in IRB. Verify that you can create Menus with correct information and get errors when you try to create a Menu with invalid input. = DON'T KNOW HOW TO DO THIS
# Create the first view you see in the Mockup the Menu. (Don't worry about styling yet). - DONE	
# Implement create and read actions for your Menus - DONE
# Use Rspec, Shoulda, and Capybara to test your Menu model and integration.

###RELEASE 2
# Create the migrations and models necessary for Items.
# Add validations.
# Test your Items data model using IRB.
# Create the Items View
# Implement create and read actions for your Items.
# Use Rspec, Shoulda, and Capybara to test your Item model and integration.