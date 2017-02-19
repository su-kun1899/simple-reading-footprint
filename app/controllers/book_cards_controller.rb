class BookCardsController < ApplicationController
  def index
    @book_cards = BookCard.all
  end

  def detail
    @book_card = BookCard.find(params[:id])
  end

  def add
    @book_card = BookCard.new
  end

  def edit
    @book_card = BookCard.find(params[:id])
  end

  def create
    BookCard.create(book_card_params)
    redirect_to_index
  end

  def update
    BookCard.find(params[:id]).update(book_card_params)
    redirect_to_index
  end

  def delete
    BookCard.find(params[:id]).destroy
    redirect_to_index
  end

  private
  def book_card_params
    params.require(:book_card).permit(:title, :author, :price, :publisher, :memo)
  end

  def redirect_to_index
    redirect_to '/book_cards'
  end
end
