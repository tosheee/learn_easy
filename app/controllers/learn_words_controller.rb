class LearnWordsController < ApplicationController

  def index
    @admin_word_lesions = Admin::WordLesion.all
  end
end
