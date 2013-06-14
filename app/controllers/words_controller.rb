class WordsController < ApplicationController
  def index
  end

  def translate
    @search = params[:en].blank? ? nil : params[:en].split.first

    if Word.where(en: @search).first
      @translate = Word.where(en: @search).first.uk
    end
    render :index
  end
end
