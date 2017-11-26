class SlowFoodApp
  get '/' do
    Product.create(name: 'Hamburger', price: 115, category: 'Main Course', description: 'It used to be a nice cow')
    @categories = Product::VALID_CATEGORIES
    @products = Product.all
    erb :welcome
  end

  get '/login' do

  end

  get '/signup' do
    erb :signup
  end

  post '/signup' do
    user_params = params['user']
    new_user = User.new(user_params)
    if new_user.save
      flash[:success] = 'Your user has been created'
      redirect '/'
    else
      flash[:error] = new_user.errors.full_messages.join(",")
      redirect '/signup'
    end
  end

  get '/users' do
    @users = User.all
    erb :users_index
  end
end
