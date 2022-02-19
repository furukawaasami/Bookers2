class BooksController < ApplicationController

   def new
     @book = Book.new(book_params)
   end

   def create
     @book = Book.new(book_params)
     @book.user_id = current_user.id
     @book.save
     redirect_to show_books_path(@book.id)
   end
   def index
     @book = Book.all
     @user = User.all

   end



   private

   def book_params
     params.require(:book).permit(:title,:body)
   end


end