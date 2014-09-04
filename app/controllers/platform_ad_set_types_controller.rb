class PlatformAdSetTypesController < ApplicationController
  before_action :set_platform_ad_set_type, only: [:show, :edit, :update, :destroy]

  # GET /platform_ad_set_types
  # GET /platform_ad_set_types.json
  def index
    @platform_ad_set_types = PlatformAdSetType.all
  end

  # GET /platform_ad_set_types/1
  # GET /platform_ad_set_types/1.json
  def show
  end

  # GET /platform_ad_set_types/new
  def new
    @platform_ad_set_type = PlatformAdSetType.new
  end

  # GET /platform_ad_set_types/1/edit
  def edit
  end

  # POST /platform_ad_set_types
  # POST /platform_ad_set_types.json
  def create
    @platform_ad_set_type = PlatformAdSetType.new(platform_ad_set_type_params)

    respond_to do |format|
      if @platform_ad_set_type.save
        format.html { redirect_to @platform_ad_set_type, notice: 'Platform ad set type was successfully created.' }
        format.json { render :show, status: :created, location: @platform_ad_set_type }
      else
        format.html { render :new }
        format.json { render json: @platform_ad_set_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platform_ad_set_types/1
  # PATCH/PUT /platform_ad_set_types/1.json
  def update
    respond_to do |format|
      if @platform_ad_set_type.update(platform_ad_set_type_params)
        format.html { redirect_to @platform_ad_set_type, notice: 'Platform ad set type was successfully updated.' }
        format.json { render :show, status: :ok, location: @platform_ad_set_type }
      else
        format.html { render :edit }
        format.json { render json: @platform_ad_set_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platform_ad_set_types/1
  # DELETE /platform_ad_set_types/1.json
  def destroy
    @platform_ad_set_type.destroy
    respond_to do |format|
      format.html { redirect_to platform_ad_set_types_url, notice: 'Platform ad set type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform_ad_set_type
      @platform_ad_set_type = PlatformAdSetType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platform_ad_set_type_params
      params.require(:platform_ad_set_type).permit(:name, :platform_id, :endpoint, :schema, :field_mapping)
    end
end
