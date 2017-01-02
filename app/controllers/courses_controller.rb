class CoursesController < ApplicationController
  def courses
    @courses = Admin::Lesion.all
  end

  def show
    unless params[:search].nil? || params[:parts_of_speech].nil?
      @courses_id = params[:id]
      @admin_word_lesions = Admin::WordLesion.index(params)
      if @admin_word_lesions.nil?
        @courses_id = params[:id]
        @admin_word_lesions = Admin::WordLesion.where(lesion_id: @courses_id)
      end
    else
      @courses_id = params[:id]
      @admin_word_lesions = Admin::WordLesion.where(lesion_id: @courses_id)
   end
  end

end
