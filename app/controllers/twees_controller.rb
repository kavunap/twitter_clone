class TweesController < ApplicationController
  before_action :set_twee, only: [:show, :edit, :update, :destroy]

  # GET /twees
  # GET /twees.json
  def index
    @twees = Twee.all
  end

  # GET /twees/1
  # GET /twees/1.json
  def show
  end

  # GET /twees/new
  def new
    if params[:back]
      @twee = Twee.new(twee_params)
    else
      @twee = Twee.new
    end
  end

  # GET /twees/1/edit
  def edit
  end

  # POST /twees
  # POST /twees.json
  def create
    @twee = Twee.new(twee_params)

    respond_to do |format|
      if @twee.save
        format.html { redirect_to twees_path, notice: 'Twee was successfully created.' }
        format.json { render :show, status: :created, location: @twee }
      else
        format.html { render :new }
        format.json { render json: @twee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twees/1
  # PATCH/PUT /twees/1.json
  def update
    respond_to do |format|
      if @twee.update(twee_params)
        format.html { redirect_to @twee, notice: 'Twee was successfully updated.' }
        format.json { render :show, status: :ok, location: @twee }
      else
        format.html { render :edit }
        format.json { render json: @twee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twees/1
  # DELETE /twees/1.json
  def destroy
    @twee.destroy
    respond_to do |format|
      format.html { redirect_to twees_url, notice: 'Twee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def confirm
    @twee = Twee.new(twee_params)
    render :new if @twee.invalid?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twee
      @twee = Twee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twee_params
      params.require(:twee).permit(:content, :created_on)
    end
end
