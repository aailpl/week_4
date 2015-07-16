get '/' do
 erb :index
end
get '/products' do
	@products = Product.all
	erb :"/products/index"
end

get '/categories' do
	@products = Category.all
	erb :index
end

get '/products/new' do
	@categories = Category.all
	erb :"/products/new"
end

post '/products' do
	Product.create(
		name: params[:name],
		price: params[:price].to_f,
		description: params[:description],
		category_id: params[:category]
	)
	redirect "/products"
end
get '/category/new' do
	erb :"/categories/new"
end

post '/category/new' do	
	params
	#@categories = Category.new(params[:name])
end