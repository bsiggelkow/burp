class PlatformCreativesController < ApplicationController
  before_action :set_platform_creative, only: [:show, :edit, :update, :destroy]

  # GET /platform_creatives
  # GET /platform_creatives.json
  def index
    @platform_creatives = PlatformCreative.all
  end

  # GET /platform_creatives/1
  # GET /platform_creatives/1.json
  def show
  end

  # GET /platform_creatives/new
  def new
    @platform_creative = PlatformCreative.new
  end

  # GET /platform_creatives/1/edit
  def edit
  end

  # POST /platform_creatives
  # POST /platform_creatives.json
  def create
    @platform_creative = PlatformCreative.new(platform_creative_params)

    respond_to do |format|
      if @platform_creative.save
        format.html { redirect_to @platform_creative, notice: 'Platform creative was successfully created.' }
        format.json { render :show, status: :created, location: @platform_creative }
      else
        format.html { render :new }
        format.json { render json: @platform_creative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platform_creatives/1
  # PATCH/PUT /platform_creatives/1.json
  def update
    respond_to do |format|
      if @platform_creative.update(platform_creative_params)
        format.html { redirect_to @platform_creative, notice: 'Platform creative was successfully updated.' }
        format.json { render :show, status: :ok, location: @platform_creative }
      else
        format.html { render :edit }
        format.json { render json: @platform_creative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platform_creatives/1
  # DELETE /platform_creatives/1.json
  def destroy
    @platform_creative.destroy
    respond_to do |format|
      format.html { redirect_to platform_creatives_url, notice: 'Platform creative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform_creative
      @platform_creative = PlatformCreative.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platform_creative_params
      params.require(:platform_creative).permit(:name, :uri, :features, :creative_id, :platform_creative_type_id)
    end
end
