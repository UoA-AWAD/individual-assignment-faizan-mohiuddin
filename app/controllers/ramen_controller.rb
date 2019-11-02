class RamenController < ApplicationController
  before_action :set_raman, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?

  # GET /ramen
  # GET /ramen.json
  def index
    @ramen = Raman.all
  end

  # GET /ramen/1
  # GET /ramen/1.json
  def show
  end

  # GET /ramen/new
  def new
    @raman = Raman.new
  end

  # GET /ramen/1/edit
  def edit
  end

  # POST /ramen
  # POST /ramen.json
  def create
    @raman = Raman.new(raman_params)

    respond_to do |format|
      if @raman.save
        format.html { redirect_to @raman, notice: 'Raman was successfully created.' }
        format.json { render :show, status: :created, location: @raman }
      else
        format.html { render :new }
        format.json { render json: @raman.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ramen/1
  # PATCH/PUT /ramen/1.json
  def update
    respond_to do |format|
      if @raman.update(raman_params)
        format.html { redirect_to @raman, notice: 'Raman was successfully updated.' }
        format.json { render :show, status: :ok, location: @raman }
      else
        format.html { render :edit }
        format.json { render json: @raman.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ramen/1
  # DELETE /ramen/1.json
  def destroy
    @raman.destroy
    respond_to do |format|
      format.html { redirect_to ramen_url, notice: 'Raman was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raman
      @raman = Raman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raman_params
      params.require(:raman).permit(:Brand, :Variety, :Style, :Country, :Stars)
    end
end
