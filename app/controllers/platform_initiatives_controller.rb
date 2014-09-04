class PlatformInitiativesController < ApplicationController
  before_action :set_platform_initiative, only: [:show, :edit, :update, :destroy]

  # GET /platform_initiatives
  # GET /platform_initiatives.json
  def index
    @platform_initiatives = PlatformInitiative.all
  end

  # GET /platform_initiatives/1
  # GET /platform_initiatives/1.json
  def show
  end

  # GET /platform_initiatives/new
  def new
    @platform_initiative = PlatformInitiative.new
  end

  # GET /platform_initiatives/1/edit
  def edit
  end

  # POST /platform_initiatives
  # POST /platform_initiatives.json
  def create
    @platform_initiative = PlatformInitiative.new(platform_initiative_params)

    respond_to do |format|
      if @platform_initiative.save
        format.html { redirect_to @platform_initiative, notice: 'Platform initiative was successfully created.' }
        format.json { render :show, status: :created, location: @platform_initiative }
      else
        format.html { render :new }
        format.json { render json: @platform_initiative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platform_initiatives/1
  # PATCH/PUT /platform_initiatives/1.json
  def update
    respond_to do |format|
      if @platform_initiative.update(platform_initiative_params)
        format.html { redirect_to @platform_initiative, notice: 'Platform initiative was successfully updated.' }
        format.json { render :show, status: :ok, location: @platform_initiative }
      else
        format.html { render :edit }
        format.json { render json: @platform_initiative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platform_initiatives/1
  # DELETE /platform_initiatives/1.json
  def destroy
    @platform_initiative.destroy
    respond_to do |format|
      format.html { redirect_to platform_initiatives_url, notice: 'Platform initiative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform_initiative
      @platform_initiative = PlatformInitiative.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platform_initiative_params
      params.require(:platform_initiative).permit(:name, :uri, :features, :initiative_id, :platform_initiative_type_id)
    end
end
