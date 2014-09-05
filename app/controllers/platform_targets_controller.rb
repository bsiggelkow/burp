class PlatformTargetsController < ApplicationController
  before_action :set_platform_target, only: [:show, :edit, :update, :destroy]

  # GET /platform_targets
  # GET /platform_targets.json
  def index
    @platform_targets = PlatformTarget.all
  end

  # GET /platform_targets/1
  # GET /platform_targets/1.json
  def show
  end

  # GET /platform_targets/new
  def new
    @platform_target = PlatformTarget.new
  end

  # GET /platform_targets/1/edit
  def edit
  end

  # POST /platform_targets
  # POST /platform_targets.json
  def create
    @platform_target = PlatformTarget.new(platform_target_params)

    respond_to do |format|
      if @platform_target.save
        format.html { redirect_to @platform_target, notice: 'Platform target was successfully created.' }
        format.json { render :show, status: :created, location: @platform_target }
      else
        format.html { render :new }
        format.json { render json: @platform_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platform_targets/1
  # PATCH/PUT /platform_targets/1.json
  def update
    respond_to do |format|
      if @platform_target.update(platform_target_params)
        format.html { redirect_to @platform_target, notice: 'Platform target was successfully updated.' }
        format.json { render :show, status: :ok, location: @platform_target }
      else
        format.html { render :edit }
        format.json { render json: @platform_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platform_targets/1
  # DELETE /platform_targets/1.json
  def destroy
    @platform_target.destroy
    respond_to do |format|
      format.html { redirect_to platform_targets_url, notice: 'Platform target was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform_target
      @platform_target = PlatformTarget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platform_target_params
      params.require(:platform_target).permit(:name, :uri, :features, :target_id, :platform_target_type_id)
    end
end
