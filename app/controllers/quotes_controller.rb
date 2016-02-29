require 'time_ago_in_words'

class QuotesController < ApplicationController

  def index
    @quotes = Quote.all
  end

  def time_ago_in_words(time)
    (Time.now - time.to_i).ago_in_words
  end

  helper_method :time_ago_in_words

end