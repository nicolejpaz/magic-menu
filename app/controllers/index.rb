require 'json'

get '/' do
  redirect '/menu'
end

get '/menu' do
	erb :index
end

get '/item' do
	erb :item
end

post '/menu/create' do
	Menu.create(params[:menu])
	# @menu_obj = {:name => params[:menu][:name]}
	# if request.xhr?
 #  	erb :_menu
 #  end

	#AJAX return below:
	# erb :_menu , :layout => false
	redirect '/menu'
end

post '/item/create' do
	Item.create(params[:item])
	redirect '/item'
end


###DB name = maginmenu_development

###RELEASE 1
# Create a migration and model for Menus. - DONE
# Add validations. - What validations?
# Test your model in IRB. Verify that you can create Menus with correct information and get errors when you try to create a Menu with invalid input. = DON'T KNOW HOW TO DO THIS
# Create the first view you see in the Mockup the Menu. (Don't worry about styling yet). - DONE	
# Implement create and read actions for your Menus - DONE
# Use Rspec, Shoulda, and Capybara to test your Menu model and integration.

###RELEASE 2
# Create the migrations and models necessary for Items. - DONE
# Add validations. - Price verification not working!
# Test your Items data model using IRB. - Not sure how to. 
# Create the Items View - DONE
# Implement create and read actions for your Items. - DONE
# Use Rspec, Shoulda, and Capybara to test your Item model and integration.

###RELEASE 3
# Create a many-to-many relationship between items and menus.
# Using IRB, test your data model. Verify that you can assign Items to a Menu; and then, see all the Items that belong to a given Menu; and given an Item, see all the Menus that Item is on.
# Create the Items on Menus View (don't worry about styling yet). In the Items on Menus View, the drop down should be filled with all possible items.
# Use Rspec, Shoulda, and Capybara to test your models and integration.