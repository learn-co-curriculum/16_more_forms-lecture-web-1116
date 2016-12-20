class GenresController < ApplicationController


  get '/genres/new' do
    erb(:'genres/new.html')
  end

  post '/genres' do
    @genre = Genre.create(params[:genre])
    redirect '/books'
  end
end
