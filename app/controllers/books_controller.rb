class BooksController < ApplicationController


   def create
     book = Book.new(book_params)
     book.save
     redirect_to books_path(book.id)
   end
   def index
     @book = Book.new
     @books = Book.all
     @users = User.all
   end

   def show
     @book = Book.find(params[:id])
   end


 private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end


end