class Admin::LesionsController < Admin::AdminController
  before_action :set_admin_lesion, only: [:show, :edit, :update, :destroy]

  # GET /admin/lesions
  # GET /admin/lesions.json
  def index
    @admin_lesions = Admin::Lesion.all
  end

  # GET /admin/lesions/1
  # GET /admin/lesions/1.json
  def show
  end

  # GET /admin/lesions/new
  def new
    @admin_lesion = Admin::Lesion.new
  end

  # GET /admin/lesions/1/edit
  def edit
  end

  # POST /admin/lesions
  # POST /admin/lesions.json
  def create
    @admin_lesion = Admin::Lesion.new(admin_lesion_params)

    respond_to do |format|
      if @admin_lesion.save
        format.html { redirect_to @admin_lesion, notice: 'Lesion was successfully created.' }
        format.json { render :show, status: :created, location: @admin_lesion }
      else
        format.html { render :new }
        format.json { render json: @admin_lesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/lesions/1
  # PATCH/PUT /admin/lesions/1.json
  def update
    respond_to do |format|
      if @admin_lesion.update(admin_lesion_params)
        format.html { redirect_to @admin_lesion, notice: 'Lesion was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_lesion }
      else
        format.html { render :edit }
        format.json { render json: @admin_lesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/lesions/1
  # DELETE /admin/lesions/1.json
  def destroy
    @admin_lesion.destroy
    respond_to do |format|
      format.html { redirect_to admin_lesions_url, notice: 'Lesion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_lesion
      @admin_lesion = Admin::Lesion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_lesion_params
      params.require(:admin_lesion).permit(:name_lesion, :description)
    end
end
