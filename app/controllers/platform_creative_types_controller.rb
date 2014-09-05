class PlatformCreativeTypesController < ApplicationController
  before_action :set_platform_creative_type, only: [:show, :edit, :update, :destroy]

  # GET /platform_creative_types
  # GET /platform_creative_types.json
  def index
    @platform_creative_types = PlatformCreativeType.all
  end

  # GET /platform_creative_types/1
  # GET /platform_creative_types/1.json
  def show
  end

  # GET /platform_creative_types/new
  def new
    @platform_creative_type = PlatformCreativeType.new
  end

  # GET /platform_creative_types/1/edit
  def edit
  end

  # POST /platform_creative_types
  # POST /platform_creative_types.json
  def create
    @platform_creative_type = PlatformCreativeType.new(platform_creative_type_params)

    respond_to do |format|
      if @platform_creative_type.save
        format.html { redirect_to @platform_creative_type, notice: 'Platform creative type was successfully created.' }
        format.json { render :show, status: :created, location: @platform_creative_type }
      else
        format.html { render :new }
        format.json { render json: @platform_creative_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platform_creative_types/1
  # PATCH/PUT /platform_creative_types/1.json
  def update
    respond_to do |format|
      if @platform_creative_type.update(platform_creative_type_params)
        format.html { redirect_to @platform_creative_type, notice: 'Platform creative type was successfully updated.' }
        format.json { render :show, status: :ok, location: @platform_creative_type }
      else
        format.html { render :edit }
        format.json { render json: @platform_creative_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platform_creative_types/1
  # DELETE /platform_creative_types/1.json
  def destroy
    @platform_creative_type.destroy
    respond_to do |format|
      format.html { redirect_to platform_creative_types_url, notice: 'Platform creative type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform_creative_type
      @platform_creative_type = PlatformCreativeType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platform_creative_type_params
      params.require(:platform_creative_type).permit(:name, :platform_id, :endpoint, :schema, :field_mapping)
    end
end
