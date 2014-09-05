class PlatformTargetTypesController < ApplicationController
  before_action :set_platform_target_type, only: [:show, :edit, :update, :destroy]

  # GET /platform_target_types
  # GET /platform_target_types.json
  def index
    @platform_target_types = PlatformTargetType.all
  end

  # GET /platform_target_types/1
  # GET /platform_target_types/1.json
  def show
  end

  # GET /platform_target_types/new
  def new
    @platform_target_type = PlatformTargetType.new
  end

  # GET /platform_target_types/1/edit
  def edit
  end

  # POST /platform_target_types
  # POST /platform_target_types.json
  def create
    @platform_target_type = PlatformTargetType.new(platform_target_type_params)

    respond_to do |format|
      if @platform_target_type.save
        format.html { redirect_to @platform_target_type, notice: 'Platform target type was successfully created.' }
        format.json { render :show, status: :created, location: @platform_target_type }
      else
        format.html { render :new }
        format.json { render json: @platform_target_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platform_target_types/1
  # PATCH/PUT /platform_target_types/1.json
  def update
    respond_to do |format|
      if @platform_target_type.update(platform_target_type_params)
        format.html { redirect_to @platform_target_type, notice: 'Platform target type was successfully updated.' }
        format.json { render :show, status: :ok, location: @platform_target_type }
      else
        format.html { render :edit }
        format.json { render json: @platform_target_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platform_target_types/1
  # DELETE /platform_target_types/1.json
  def destroy
    @platform_target_type.destroy
    respond_to do |format|
      format.html { redirect_to platform_target_types_url, notice: 'Platform target type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform_target_type
      @platform_target_type = PlatformTargetType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platform_target_type_params
      params.require(:platform_target_type).permit(:name, :platform_id, :endpoint, :schema, :field_mapping)
    end
end
