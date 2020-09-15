class BooksController < ApplicationController
  def top
  end
  def index
      @books = Book.all
      @book = Book.new
  end

  def show
      @book = Book.find(params[:id])

  end

  def create
      @book = Book.new(book_params)
      if @book.save
          redirect_to book_path(@book), notice: 'successfully'

      else
        @books = Book.all
        render action: :index

      end
  end


  def edit
      @book = Book.find(params[:id])

  end

  def update
      @book = Book.find(params[:id])
     if @book.update(book_params)

      redirect_to book_path, notice: 'successfully update
      '
     else

      render action: :edit


     end
  end

  def destroy
      book = Book.find(params[:id])
     if book.destroy
      redirect_to books_path, notice: 'successfully destroy
      '
    end
  end

  private
  def book_params
   params.require(:book).permit(:title, :body)
  end
end