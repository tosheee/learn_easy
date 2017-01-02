class Admin::WordLesionsController < ApplicationController
  before_action :set_admin_word_lesion, only: [:show, :edit, :update, :destroy]

  # GET /admin/word_lesions
  # GET /admin/word_lesions.json
  def index
    @admin_word_lesions = Admin::WordLesion.all
  end

  # GET /admin/word_lesions/1
  # GET /admin/word_lesions/1.json
  def show
  end

  # GET /admin/word_lesions/new
  def new
    @admin_word_lesion = Admin::WordLesion.new
  end

  # GET /admin/word_lesions/1/edit
  def edit
  end

  # POST /admin/word_lesions
  # POST /admin/word_lesions.json
  def create
    @admin_word_lesion = Admin::WordLesion.new(admin_word_lesion_params)

    respond_to do |format|
      if @admin_word_lesion.save
        format.html { redirect_to @admin_word_lesion, notice: 'Word lesion was successfully created.' }
        format.json { render :show, status: :created, location: @admin_word_lesion }
      else
        format.html { render :new }
        format.json { render json: @admin_word_lesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/word_lesions/1
  # PATCH/PUT /admin/word_lesions/1.json
  def update
    respond_to do |format|
      if @admin_word_lesion.update(admin_word_lesion_params)
        format.html { redirect_to @admin_word_lesion, notice: 'Word lesion was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_word_lesion }
      else
        format.html { render :edit }
        format.json { render json: @admin_word_lesion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/word_lesions/1
  # DELETE /admin/word_lesions/1.json
  def destroy
    @admin_word_lesion.destroy
    respond_to do |format|
      format.html { redirect_to admin_word_lesions_url, notice: 'Word lesion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_word_lesion
      @admin_word_lesion = Admin::WordLesion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_word_lesion_params
      params.require(:admin_word_lesion).permit(:en_word, :en_audio_word, :bg_word, :bg_audio_word, :visible_word, :img_word, :lesion_id, :parts_of_speech)
    end
end
