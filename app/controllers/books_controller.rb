class BooksController < ApplicationController

  def index
    @books = Book.all.order(created_at: :desc)
    @month = Month.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new
    @book.user_id = params[:user_id]
    @book.page_number = params[:page_number]
    @book.description = params[:description]
    @book.author = params[:author]
    @book.title = params[:title]
    @book.cover_url = params[:cover_url]

    if @book.save
      redirect_to "/books", :notice => "Book created successfully."
    else
      render 'new'
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    @book.user_id = params[:user_id]
    @book.page_number = params[:page_number]
    @book.description = params[:description]
    @book.author = params[:author]
    @book.title = params[:title]
    @book.cover_url = params[:cover_url]

    if @book.save
      redirect_to "/books", :notice => "Book updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])

    @book.destroy

    redirect_to "/books", :notice => "Book deleted."
end





end
