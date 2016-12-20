class BooksController < ApplicationController

  get '/books'  do
    @books = Book.all
    erb :'books/index.html'
  end

  get('/books/new') do
    erb(:'books/new.html')
  end

  post '/books' do
    @book = Book.create(params[:book])
    redirect "/books/#{@book.id}"
  end

  get('/books/:id') do
    @book = Book.find(params[:id])
    erb(:'books/show.html')
  end

  ## Edit / Update

  get('/books/:id/edit') do
    @book = Book.find(params[:id])
    erb(:'books/edit.html')
  end

  patch('/books/:id') do
    @book = Book.find(params[:id])
    @book.update(params[:book])
    redirect "/books/#{@book.id}"
  end

  ## Destroy
  delete('/books/:id') do
    @book = Book.find(params[:id])
    @book.destroy
    redirect '/books'
  end
end
