class BooksController < ApplicationController

def root

end


def show
	@book = Book.find(params[:id])


end

def index
	@books = Book.all

	@book = Book.new
end

def new
end

def create
	@book = Book.new(book_params)

	if @book.save
		flash[:notice] = "Book was successfully created."
		redirect_to book_path(@book.id)
	else
		@books = Book.all
		render :index
	end
end

def edit
	@book = Book.find(params[:id])
end

def update
	
	@book = Book.find(params[:id])
	if @book.update(book_params)
		flash[:notice] = "Book was successfully update."
		redirect_to book_path(@book.id)
	else
		render :edit
	end
end

def destroy
	book = Book.find(params[:id])
	book.destroy
	flash[:notice] = "Book was successfully destroy."
	redirect_to books_path
end

private
def book_params
	params.require(:book).permit(:title, :category, :body)
end
end
