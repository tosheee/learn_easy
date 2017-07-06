class Admin::NameExercisesController < ApplicationController
  before_action :set_admin_name_exercise, only: [:show, :edit, :update, :destroy]

  # GET /admin/name_exercises
  # GET /admin/name_exercises.json
  def index
    @admin_name_exercises = Admin::NameExercise.all
  end

  # GET /admin/name_exercises/1
  # GET /admin/name_exercises/1.json
  def show
  end

  # GET /admin/name_exercises/new
  def new
    @admin_name_exercise = Admin::NameExercise.new
  end

  # GET /admin/name_exercises/1/edit
  def edit
  end

  # POST /admin/name_exercises
  # POST /admin/name_exercises.json
  def create
    @admin_name_exercise = Admin::NameExercise.new(admin_name_exercise_params)

    respond_to do |format|
      if @admin_name_exercise.save
        format.html { redirect_to @admin_name_exercise, notice: 'Name exercise was successfully created.' }
        format.json { render :show, status: :created, location: @admin_name_exercise }
      else
        format.html { render :new }
        format.json { render json: @admin_name_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/name_exercises/1
  # PATCH/PUT /admin/name_exercises/1.json
  def update
    respond_to do |format|
      if @admin_name_exercise.update(admin_name_exercise_params)
        format.html { redirect_to @admin_name_exercise, notice: 'Name exercise was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_name_exercise }
      else
        format.html { render :edit }
        format.json { render json: @admin_name_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/name_exercises/1
  # DELETE /admin/name_exercises/1.json
  def destroy
    @admin_name_exercise.destroy
    respond_to do |format|
      format.html { redirect_to admin_name_exercises_url, notice: 'Name exercise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_name_exercise
      @admin_name_exercise = Admin::NameExercise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_name_exercise_params
      params.require(:admin_name_exercise).permit(:name)
    end
end
