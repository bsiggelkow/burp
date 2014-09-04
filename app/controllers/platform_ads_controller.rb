class PlatformAdsController < ApplicationController
  before_action :set_platform_ad, only: [:show, :edit, :update, :destroy]

  # GET /platform_ads
  # GET /platform_ads.json
  def index
    @platform_ads = PlatformAd.all
  end

  # GET /platform_ads/1
  # GET /platform_ads/1.json
  def show
  end

  # GET /platform_ads/new
  def new
    @platform_ad = PlatformAd.new
  end

  # GET /platform_ads/1/edit
  def edit
  end

  # POST /platform_ads
  # POST /platform_ads.json
  def create
    @platform_ad = PlatformAd.new(platform_ad_params)

    respond_to do |format|
      if @platform_ad.save
        format.html { redirect_to @platform_ad, notice: 'Platform ad was successfully created.' }
        format.json { render :show, status: :created, location: @platform_ad }
      else
        format.html { render :new }
        format.json { render json: @platform_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platform_ads/1
  # PATCH/PUT /platform_ads/1.json
  def update
    respond_to do |format|
      if @platform_ad.update(platform_ad_params)
        format.html { redirect_to @platform_ad, notice: 'Platform ad was successfully updated.' }
        format.json { render :show, status: :ok, location: @platform_ad }
      else
        format.html { render :edit }
        format.json { render json: @platform_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platform_ads/1
  # DELETE /platform_ads/1.json
  def destroy
    @platform_ad.destroy
    respond_to do |format|
      format.html { redirect_to platform_ads_url, notice: 'Platform ad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform_ad
      @platform_ad = PlatformAd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platform_ad_params
      params.require(:platform_ad).permit(:name, :uri, :features, :ad_id, :platform_ad_type_id)
    end
end
