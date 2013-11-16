get '/' do
  # Look in app/views/index.erb
  # erb :index
  redirect '/menus'
end


#######################################
# MENUS
#######################################
# decided to change this from the spec
#  because it's a better route
get '/menus' do
	@menus = Menu.all
	erb :menus
end

# add a new menu
post '/menus' do
	# expecting params[:menu] as new menu fields
	Menu.create(params[:menu])
	redirect '/menus'
end

# added this route to delete menus
delete '/menus' do
	@menu = Menu.find(params[:id]).delete
	redirect '/menus'
end

#######################################
# ITEMS
#######################################
get '/items' do
	@items = Item.all
	erb :items
end

# add a new menu
post '/items' do
	# expecting params[:menu] as new menu fields
	Item.create(params[:item])
	redirect '/items'
end

# added this route to delete items
delete '/items' do
	@item = Item.find(params[:id]).delete
	redirect '/items'
end

#######################################
# MENUS and ITEMS
#######################################
get '/menus/:id' do
	@menu = Menu.find(params[:id])
	@items = Item.all
	erb :menu
end

post '/menus/:id' do
	@menu = Menu.find(params[:id])
	@item = Item.create(params[:item])
	@menu.items.add(@item)
	redirect "/menus/#{params[:id]}"
end

delete '/menus/:id' do
	@menu = Menu.find(params[:id])
	# expecting params[:item_id] to delete association
end
