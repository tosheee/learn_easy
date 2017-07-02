class Admin::LessonsController < ApplicationController
  before_action :set_admin_lesson, only: [:show, :edit, :update, :destroy]


  def index
    @admin_lessons = Admin::Lesson.all
  end

  def show
  end

  def new
    @admin_lesson = Admin::Lesson.new
  end

  def edit
  end

  def create
    admin_lesson = Admin::Lesson.new(admin_lesson_params)
    convert_array = JSON[admin_lesson.conversation]
    convert_string = Hash[*convert_array]
    admin_lesson.conversation = "#{convert_string}"
    admin_lesson.save
    @admin_lessons = Admin::Lesson.all
    render :index
  end

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
    #def admin_lesson_params
     # params.require(:admin_lesson).permit(:view, :conversation, :words)
    #end



  def admin_lesson_params
    if params[:admin_lesson][:conversation].is_a?(Hash)
      params.require(:admin_lesson).permit(:view, :words).tap do |whitelisted|
        whitelisted[:conversation] = Hash params[:admin_lesson][:conversation].deep_symbolize_keys
      end
    else
      params.require(:admin_lesson).permit(:view, :wors).tap do |whitelisted|
        whitelisted[:conversation] = params[:admin_lesson][:conversation]
      end
    end
  end


end
