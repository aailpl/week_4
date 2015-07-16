get '/' do
	@todos = Todo.all
	erb :"todo/index"
end

get '/home' do
	@complete = Todo.where(:status => "complete")
	@uncomplete = Todo.where(:status => "uncomplete")
	erb :"todo/home"
end

get '/new' do
	erb :"todo/new"
end




post '/new' do
	Todo.new({:title => params[:title], :status => params[:status]}).save
	redirect '/home'
end

post '/remove' do
	 if params.key?("method")
		keys = params.keys[0..-2]
		keys.each do |key|
			Todo.find_by(id: params[key.to_sym]).update(:status => "complete")
		end
		redirect '/home'
	else
		keys = params.keys
		keys.each do |key|
			Todo.find_by(id: params[key.to_sym]).destroy

		end
		redirect '/home'
	end

end
