class ExercisesController < ApplicationController

  def list
    sub_categories = Admin::SubCategory.all
    @sub_categoryes = sub_categories.where(category_id: params[:id])
  end

  def conversation
    all_exercise = Admin::AllExercise.all
    @conversation_id = params[:id]
    @conversations = all_exercise.where(exercite_id: @conversation_id)
  end

  def exercise_bg
    @lesson = Admin::AllExercise.find(params[:id])
  end

  def exercise_en
    @lesson = Admin::AllExercise.find(params[:id])
  end



end
