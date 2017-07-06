class Admin::AllExercisesController < ApplicationController
  before_action :set_admin_all_exercise, only: [:show, :edit, :update, :destroy]

  def index
    @admin_all_exercises = Admin::AllExercise.all
  end

  def show
  end

  def new
    @admin_all_exercise = Admin::AllExercise.new
  end

  def edit
  end

  def create
    all_exercise = Admin::AllExercise.new(admin_all_exercise_params)
    convert_array = JSON[all_exercise.sentences]
    convert_string = Hash[*convert_array]
    all_exercise.sentences = "#{convert_string}"
    all_exercise.save
    @admin_all_exercises = Admin::AllExercise.all
    render :index
  end

  def update
    respond_to do |format|
      if @admin_all_exercise.update(admin_all_exercise_params)
        format.html { redirect_to @admin_all_exercise, notice: 'All exercise was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_all_exercise }
      else
        format.html { render :edit }
        format.json { render json: @admin_all_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_all_exercise.destroy
    respond_to do |format|
      format.html { redirect_to admin_all_exercises_url, notice: 'All exercise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_all_exercise
      @admin_all_exercise = Admin::AllExercise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    #def admin_all_exercise_params
     # params.require(:admin_all_exercise).permit(:exercite_id, :title, :sentences)
    #end


    def admin_all_exercise_params
      if params[:admin_all_exercise][:sentences].is_a?(Hash)
        params.require(:admin_all_exercise).permit(:exercite_id, :title).tap do |whitelisted|
          whitelisted[:sentences] = Hash params[:admin_all_exercise][:sentences].deep_symbolize_keys
        end
      else
        params.require(:admin_all_exercise).permit(:exercite_id, :title).tap do |whitelisted|
          whitelisted[:sentences] = params[:admin_all_exercise][:sentences]
        end
      end
    end
end
