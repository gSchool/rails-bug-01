class QuotesController < ApplicationController

  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(params.require).permit(:text, :author, :create_at, :updated_at)
    @quote.save
    redirect_to quotes_path
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  def update
    @quote = Quote.find(params[:id])
    @quote.update(params.require).permit(:text, :author, :create_at, :updated_at)
  end

  
end
