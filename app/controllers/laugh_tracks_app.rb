class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    if params[:age]
      @comedians = Comedian.where(age: params[:age])
    else
      @comedians = Comedian.all
    end
      @average_age = Comedian.average_age
      @average_run_time = Special.average_run_time
      @unique_cities = Comedian.unique_cities
    erb :index
  end


end
