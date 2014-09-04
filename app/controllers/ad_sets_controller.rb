class AdSetsController < ApplicationController
  before_action :set_ad_set, only: [:show, :edit, :update, :destroy]

  # GET /ad_sets
  # GET /ad_sets.json
  def index
    @ad_sets = AdSet.all
  end

  # GET /ad_sets/1
  # GET /ad_sets/1.json
  def show
  end

  # GET /ad_sets/new
  def new
    @ad_set = AdSet.new
  end

  # GET /ad_sets/1/edit
  def edit
  end

  # POST /ad_sets
  # POST /ad_sets.json
  def create
    @ad_set = AdSet.new(ad_set_params)

    respond_to do |format|
      if @ad_set.save
        format.html { redirect_to @ad_set, notice: 'Ad set was successfully created.' }
        format.json { render :show, status: :created, location: @ad_set }
      else
        format.html { render :new }
        format.json { render json: @ad_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ad_sets/1
  # PATCH/PUT /ad_sets/1.json
  def update
    respond_to do |format|
      if @ad_set.update(ad_set_params)
        format.html { redirect_to @ad_set, notice: 'Ad set was successfully updated.' }
        format.json { render :show, status: :ok, location: @ad_set }
      else
        format.html { render :edit }
        format.json { render json: @ad_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_sets/1
  # DELETE /ad_sets/1.json
  def destroy
    @ad_set.destroy
    respond_to do |format|
      format.html { redirect_to ad_sets_url, notice: 'Ad set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad_set
      @ad_set = AdSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ad_set_params
      params.require(:ad_set).permit(:name, :initiative_id)
    end
end
