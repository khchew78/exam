class ParentInfomationsController < ApplicationController
  before_action :set_parent_infomation, only: [:show, :edit, :update, :destroy]

  # GET /parent_infomations
  # GET /parent_infomations.json
  def index
    @parent_infomations = ParentInfomation.all
    @branch_parent_infomations = ParentInfomation.where(branch_id: session[:licensee_branch_id])
  end

  # GET /parent_infomations/1
  # GET /parent_infomations/1.json
  def show
  end

  # GET /parent_infomations/new
  def new
    @parent_infomation = ParentInfomation.new
  end

  # GET /parent_infomations/1/edit
  def edit
  end

  # POST /parent_infomations
  # POST /parent_infomations.json
  def create
    @parent_infomation = ParentInfomation.new(parent_infomation_params)

    respond_to do |format|
      if @parent_infomation.save
        format.html { redirect_to @parent_infomation, notice: 'Parent infomation was successfully created.' }
        format.json { render :show, status: :created, location: @parent_infomation }
      else
        format.html { render :new }
        format.json { render json: @parent_infomation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parent_infomations/1
  # PATCH/PUT /parent_infomations/1.json
  def update
    respond_to do |format|
      if @parent_infomation.update(parent_infomation_params)
        format.html { redirect_to @parent_infomation, notice: 'Parent infomation was successfully updated.' }
        format.json { render :show, status: :ok, location: @parent_infomation }
      else
        format.html { render :edit }
        format.json { render json: @parent_infomation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parent_infomations/1
  # DELETE /parent_infomations/1.json
  def destroy
    @parent_infomation.destroy
    respond_to do |format|
      format.html { redirect_to parent_infomations_url, notice: 'Parent infomation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent_infomation
      @parent_infomation = ParentInfomation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parent_infomation_params
      params.require(:parent_infomation).permit(:parent_id, :name, :age, :ic_number, :occupation, :type_id)
    end
end
