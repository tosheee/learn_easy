class ViewLessonsController < ApplicationController

  def index
    @lessons = Admin::Lesson.all
  end

  def show
    @lesson = Admin::Lesson.find(params[:id])
  end

  def exercise_bg
    @lesson = Admin::Lesson.find(params[:id])
  end

  def exercise_en
    @lesson = Admin::Lesson.find(params[:id])
  end


end
