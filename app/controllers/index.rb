get '/' do
  erb :index
end

get '/menu/:id' do
	@menu = Menu.find_by_id(params[:id])
	erb :menu
	# at some point, only the menus a user has permission to see should be shown
end

post '/menu/new' do
	menu = Menu.create name: params[:menuTitle] unless params[:menuTitle].empty?
	return menu.name if menu
	return 'false'
end	