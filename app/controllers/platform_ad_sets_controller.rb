class PlatformAdSetsController < ApplicationController
  before_action :set_platform_ad_set, only: [:show, :edit, :update, :destroy]

  # GET /platform_ad_sets
  # GET /platform_ad_sets.json
  def index
    @platform_ad_sets = PlatformAdSet.all
  end

  # GET /platform_ad_sets/1
  # GET /platform_ad_sets/1.json
  def show
  end

  # GET /platform_ad_sets/new
  def new
    @platform_ad_set = PlatformAdSet.new
  end

  # GET /platform_ad_sets/1/edit
  def edit
  end

  # POST /platform_ad_sets
  # POST /platform_ad_sets.json
  def create
    @platform_ad_set = PlatformAdSet.new(platform_ad_set_params)

    respond_to do |format|
      if @platform_ad_set.save
        format.html { redirect_to @platform_ad_set, notice: 'Platform ad set was successfully created.' }
        format.json { render :show, status: :created, location: @platform_ad_set }
      else
        format.html { render :new }
        format.json { render json: @platform_ad_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platform_ad_sets/1
  # PATCH/PUT /platform_ad_sets/1.json
  def update
    respond_to do |format|
      if @platform_ad_set.update(platform_ad_set_params)
        format.html { redirect_to @platform_ad_set, notice: 'Platform ad set was successfully updated.' }
        format.json { render :show, status: :ok, location: @platform_ad_set }
      else
        format.html { render :edit }
        format.json { render json: @platform_ad_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platform_ad_sets/1
  # DELETE /platform_ad_sets/1.json
  def destroy
    @platform_ad_set.destroy
    respond_to do |format|
      format.html { redirect_to platform_ad_sets_url, notice: 'Platform ad set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform_ad_set
      @platform_ad_set = PlatformAdSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platform_ad_set_params
      params.require(:platform_ad_set).permit(:name, :uri, :features, :ad_set_id, :platform_ad_set_type_id)
    end
end
