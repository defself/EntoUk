class WordsController < ApplicationController
  def index
  end

  def translate
    if Word.where(en: params[:en]).first.nil?
      render text: 'In the dictionary there is no such word...'
    else
      @word = Word.where(en: params[:en]).first.uk
    end
  end
end
