
get '/' do
	if params.key?("order")
		@contacts = if params[:order] == "ASC"
			Contact.order(name: :asc)
		else
			Contact.order(name: :desc)
		end
	end

	if params.key?("search_by")
		@contacts = if @contacts
			@contacts.where(params[:search_by].to_sym => params[:search])
		else
			Contact.where(params[:search_by].to_sym => params[:search])
		end
	end

	@contacts ||= Contact.all
	erb :"contact/index"
end

get '/new' do
	erb :"contact/new"
end

post '/new' do
	Contact.new({:name => params[:name],:last_name => params[:last_name],:phone => params[:phone],:email => params[:email],:adress => params[:adress] }).save 
	redirect '/'
end


get '/:id/edit' do
	@edit_mode = params.keys[0]
	@contact = Contact.find_by(id: params[:id])
	erb :"/contact/edit"
end

get '/:id/delete' do
	Contact.find_by(id: params[:id]).destroy
	redirect '/'
end

post '/:id/update' do
	contact = Contact.find_by(id: params[:id])
	key = params.keys[0].to_sym
	contact.update(key => params[key])
	# contact.name = params[:name]
	# contact.phone = params[:phone]
	# contact.save
	redirect '/'
end