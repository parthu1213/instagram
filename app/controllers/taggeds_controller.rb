class TaggedsController < ApplicationController
  before_action :set_tagged, only: [:show, :edit, :update, :destroy]

  # GET /taggeds
  # GET /taggeds.json
  def index
    @taggeds = current_user.taggeds.all
  end

  # GET /taggeds/1
  # GET /taggeds/1.json
  def show
  end

  # GET /taggeds/new
  def new
    @tagged = current_user.taggeds.new
  end

  # GET /taggeds/1/edit
  def edit
  end

  # POST /taggeds
  # POST /taggeds.json
  def create
    @tagged = Tagged.new(tagged_params)

    respond_to do |format|
      if @tagged.save
        format.html { redirect_to @tagged, notice: 'Tagged was successfully created.' }
        format.json { render :show, status: :created, location: @tagged }
      else
        format.html { render :new }
        format.json { render json: @tagged.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taggeds/1
  # PATCH/PUT /taggeds/1.json
  def update
    respond_to do |format|
      if @tagged.update(tagged_params)
        format.html { redirect_to @tagged, notice: 'Tagged was successfully updated.' }
        format.json { render :show, status: :ok, location: @tagged }
      else
        format.html { render :edit }
        format.json { render json: @tagged.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taggeds/1
  # DELETE /taggeds/1.json
  def destroy
    @tagged.destroy
    respond_to do |format|
      format.html { redirect_to taggeds_url, notice: 'Tagged was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tagged
      @tagged = Tagged.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tagged_params
      params.fetch(:tagged, {}).permit(:image)
    end
end
