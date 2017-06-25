class Admin::LessonsController < ApplicationController
  before_action :set_admin_lesson, only: [:show, :edit, :update, :destroy]

  # GET /admin/lessons
  # GET /admin/lessons.json
  def index
    @admin_lessons = Admin::Lesson.all
  end

  # GET /admin/lessons/1
  # GET /admin/lessons/1.json
  def show
  end

  # GET /admin/lessons/new
  def new
    @admin_lesson = Admin::Lesson.new
  end

  # GET /admin/lessons/1/edit
  def edit
  end

  # POST /admin/lessons
  # POST /admin/lessons.json
  def create
    @admin_lesson = Admin::Lesson.new(admin_lesson_params)

    respond_to do |format|
      if @admin_lesson.save
        format.html { redirect_to @admin_lesson, notice: 'Lesson was successfully created.' }
        format.json { render :show, status: :created, location: @admin_lesson }
      else
        format.html { render :new }
        format.json { render json: @admin_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/lessons/1
  # PATCH/PUT /admin/lessons/1.json
  def update
    respond_to do |format|
      if @admin_lesson.update(admin_lesson_params)
        format.html { redirect_to @admin_lesson, notice: 'Lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_lesson }
      else
        format.html { render :edit }
        format.json { render json: @admin_lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/lessons/1
  # DELETE /admin/lessons/1.json
  def destroy
    @admin_lesson.destroy
    respond_to do |format|
      format.html { redirect_to admin_lessons_url, notice: 'Lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_lesson
      @admin_lesson = Admin::Lesson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_lesson_params
      params.require(:admin_lesson).permit(:view, :conversation, :words)
    end
end
