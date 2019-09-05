class IgtvsController < ApplicationController
  before_action :set_igtv, only: [:show, :edit, :update, :destroy]

  # GET /igtvs
  # GET /igtvs.json
  def index
    @igtvs = current_user.igtvs.all
  end

  # GET /igtvs/1
  # GET /igtvs/1.json
  def show
  end

  # GET /igtvs/new
  def new
    @igtv = current_user.igtvs.new
  end

  # GET /igtvs/1/edit
  def edit
  end

  # POST /igtvs
  # POST /igtvs.json
  def create
    @igtv = current_user.igtvs.new(igtv_params)

    respond_to do |format|
      if @igtv.save
        format.html { redirect_to @igtv, notice: 'Igtv was successfully created.' }
        format.json { render :show, status: :created, location: @igtv }
      else
        format.html { render :new }
        format.json { render json: @igtv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /igtvs/1
  # PATCH/PUT /igtvs/1.json
  def update
    respond_to do |format|
      if @igtv.update(igtv_params)
        format.html { redirect_to @igtv, notice: 'Igtv was successfully updated.' }
        format.json { render :show, status: :ok, location: @igtv }
      else
        format.html { render :edit }
        format.json { render json: @igtv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /igtvs/1
  # DELETE /igtvs/1.json
  def destroy
    @igtv.destroy
    respond_to do |format|
      format.html { redirect_to igtvs_url, notice: 'Igtv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_igtv
      @igtv = Igtv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def igtv_params
      params.fetch(:igtv, {}).permit(:image)
    end
end
