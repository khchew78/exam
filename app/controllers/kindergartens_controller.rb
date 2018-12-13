class KindergartensController < ApplicationController
  before_action :set_kindergarten, only: [:show, :edit, :update, :destroy]

  # GET /kindergartens
  # GET /kindergartens.json
  def index
    @kindergartens = Kindergarten.all
  end

  # GET /kindergartens/1
  # GET /kindergartens/1.json
  def show
  end

  # GET /kindergartens/new
  def new
    @kindergarten = Kindergarten.new
  end

  # GET /kindergartens/1/edit
  def edit
  end

  # POST /kindergartens
  # POST /kindergartens.json
  def create
    @kindergarten = Kindergarten.new(kindergarten_params)

    respond_to do |format|
      if @kindergarten.save
        format.html { redirect_to @kindergarten, notice: 'Kindergarten was successfully created.' }
        format.json { render :show, status: :created, location: @kindergarten }
      else
        format.html { render :new }
        format.json { render json: @kindergarten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kindergartens/1
  # PATCH/PUT /kindergartens/1.json
  def update
    respond_to do |format|
      if @kindergarten.update(kindergarten_params)
        format.html { redirect_to @kindergarten, notice: 'Kindergarten was successfully updated.' }
        format.json { render :show, status: :ok, location: @kindergarten }
      else
        format.html { render :edit }
        format.json { render json: @kindergarten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kindergartens/1
  # DELETE /kindergartens/1.json
  def destroy
    @kindergarten.destroy
    respond_to do |format|
      format.html { redirect_to kindergartens_url, notice: 'Kindergarten was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kindergarten
      @kindergarten = Kindergarten.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kindergarten_params
      params.require(:kindergarten).permit(:name, :branch, :branch_id)
    end
end
