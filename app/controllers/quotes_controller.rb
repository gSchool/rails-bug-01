class QuotesController < ApplicationController

  def index
    @quotes = Quote.all
  end

  def create
    @quote = Quote.new(params.require).permit(:text, :author, :create_at, :updated_at)
    @quote.save
    redirect_to quotes_path
  end

end