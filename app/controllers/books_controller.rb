class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def index
    @books = current_user.books
    @book = Book.new
    @user = current_user
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id 
    if @book.save
      redirect_to @book, notice: "Book を作成しました！"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
