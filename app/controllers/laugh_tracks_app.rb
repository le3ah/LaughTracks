class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
      @average_age = params[:age]
      @unique_cities = @comedians.distinct.pluck(:city)
      @specials = Special.where(comedian_id: @comedians.pluck(:id))
      @average_run_time = @specials.average(:run_time).to_i
      @specials_count = @specials.size

    else
      @comedians = Comedian.all
      @average_age = Comedian.average_age
      @unique_cities = Comedian.unique_cities
      @average_run_time = Special.average_run_time
      @specials_count = Special.all.count
    end
    erb :index
  end

  get '/comedians/new' do
    erb :new
  end

  post '/comedians' do
    comedian = Comedian.new(params[:comedian])
    comedian.save
    redirect '/comedians' 
  end
end
