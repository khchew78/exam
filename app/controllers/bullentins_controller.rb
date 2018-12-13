class BullentinsController < ApplicationController
  before_action :set_bullentin, only: [:show, :edit, :update, :destroy]

  # GET /bullentins
  # GET /bullentins.json
  def index
    @bullentins = Bullentin.all
  end

  # GET /bullentins/1
  # GET /bullentins/1.json
  def show
  end

  # GET /bullentins/new
  def new
    @bullentin = Bullentin.new
  end

  # GET /bullentins/1/edit
  def edit
  end

  # POST /bullentins
  # POST /bullentins.json
  def create
    @bullentin = Bullentin.new(bullentin_params)

    respond_to do |format|
      if @bullentin.save
        format.html { redirect_to @bullentin, notice: 'Bullentin was successfully created.' }
        format.json { render :show, status: :created, location: @bullentin }
      else
        format.html { render :new }
        format.json { render json: @bullentin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bullentins/1
  # PATCH/PUT /bullentins/1.json
  def update
    respond_to do |format|
      if @bullentin.update(bullentin_params)
        format.html { redirect_to @bullentin, notice: 'Bullentin was successfully updated.' }
        format.json { render :show, status: :ok, location: @bullentin }
      else
        format.html { render :edit }
        format.json { render json: @bullentin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bullentins/1
  # DELETE /bullentins/1.json
  def destroy
    @bullentin.destroy
    respond_to do |format|
      format.html { redirect_to bullentins_url, notice: 'Bullentin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bullentin
      @bullentin = Bullentin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bullentin_params
      params.require(:bullentin).permit(:topis, :date, :content)
    end
end
