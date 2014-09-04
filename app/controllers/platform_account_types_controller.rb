class PlatformAccountTypesController < ApplicationController
  before_action :set_platform_account_type, only: [:show, :edit, :update, :destroy]

  # GET /platform_account_types
  # GET /platform_account_types.json
  def index
    @platform_account_types = PlatformAccountType.all
  end

  # GET /platform_account_types/1
  # GET /platform_account_types/1.json
  def show
  end

  # GET /platform_account_types/new
  def new
    @platform_account_type = PlatformAccountType.new
  end

  # GET /platform_account_types/1/edit
  def edit
  end

  # POST /platform_account_types
  # POST /platform_account_types.json
  def create
    @platform_account_type = PlatformAccountType.new(platform_account_type_params)

    respond_to do |format|
      if @platform_account_type.save
        format.html { redirect_to @platform_account_type, notice: 'Platform account type was successfully created.' }
        format.json { render :show, status: :created, location: @platform_account_type }
      else
        format.html { render :new }
        format.json { render json: @platform_account_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platform_account_types/1
  # PATCH/PUT /platform_account_types/1.json
  def update
    respond_to do |format|
      if @platform_account_type.update(platform_account_type_params)
        format.html { redirect_to @platform_account_type, notice: 'Platform account type was successfully updated.' }
        format.json { render :show, status: :ok, location: @platform_account_type }
      else
        format.html { render :edit }
        format.json { render json: @platform_account_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platform_account_types/1
  # DELETE /platform_account_types/1.json
  def destroy
    @platform_account_type.destroy
    respond_to do |format|
      format.html { redirect_to platform_account_types_url, notice: 'Platform account type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform_account_type
      @platform_account_type = PlatformAccountType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platform_account_type_params
      params.require(:platform_account_type).permit(:name, :platform_id, :endpoint, :schema, :field_mapping)
    end
end
