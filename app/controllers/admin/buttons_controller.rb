class Admin::ButtonsController < ApplicationController
  before_action :set_admin_button, only: [:show, :edit, :update, :destroy]

  # GET /admin/buttons
  # GET /admin/buttons.json
  def index
    @admin_buttons = Admin::Button.all
  end

  # GET /admin/buttons/1
  # GET /admin/buttons/1.json
  def show
  end

  # GET /admin/buttons/new
  def new
    @admin_button = Admin::Button.new
  end

  # GET /admin/buttons/1/edit
  def edit
  end

  # POST /admin/buttons
  # POST /admin/buttons.json
  def create
    @admin_button = Admin::Button.new(admin_button_params)

    respond_to do |format|
      if @admin_button.save
        format.html { redirect_to @admin_button, notice: 'Button was successfully created.' }
        format.json { render :show, status: :created, location: @admin_button }
      else
        format.html { render :new }
        format.json { render json: @admin_button.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/buttons/1
  # PATCH/PUT /admin/buttons/1.json
  def update
    respond_to do |format|
      if @admin_button.update(admin_button_params)
        format.html { redirect_to @admin_button, notice: 'Button was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_button }
      else
        format.html { render :edit }
        format.json { render json: @admin_button.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/buttons/1
  # DELETE /admin/buttons/1.json
  def destroy
    @admin_button.destroy
    respond_to do |format|
      format.html { redirect_to admin_buttons_url, notice: 'Button was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_button
      @admin_button = Admin::Button.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_button_params
      params.require(:admin_button).permit(:name_button, :title_button, :type_button, :path_button)
    end
end
