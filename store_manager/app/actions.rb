get '/' do
	erb :index
end

get '/products' do
	@products = Product.all
	erb :"/products/index"
end

get '/products/new' do
	@categories = Category.all
	erb :"/products/new"
end

post '/products' do
	Product.create(
		name: params[:name],
		price: params[:price].to_i,
		description: params[:description],
		category_id: params[:category]
	)
	redirect '/products'
end

get '/category' do
	@categories = Category.all
	erb :"/categories/index"
end

get '/category/new' do
	erb :"/categories/new"
end

post '/category' do
	Category.create(name: params[:name])
	redirect '/category'
end