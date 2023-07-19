class BooksController < ApplicationController

  before_action :set_book, only: %i[ show edit update destroy ]

  def index
    @books = Book.all

    @book = Book.new
  end

  def show
  end

  # GET /books/new
  def new
    @book = Book.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /books/1/edit
  def edit
  end

  def create
    @book = current_user.books.new(book_params)
    respond_to do |format|
      if @book.save
        format.html {redirect_to book_url(@book), notice: "Book was successfully created."}
        format.js
      else
      render :new, status: :unprocessable_entity
      end
    end
  end

  def update
      if @book.update(book_params)
        redirect_to book_url(@book), notice: "Book was successfully updated." 
      else
       render :edit, status: :unprocessable_entity 
      end
  end

  # DELETE /books/1 or /books/1.json
  def destroy
    @book.destroy
     redirect_to books_url, notice: "Book was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title )
    end
end
