class TwettsController < ApplicationController
  before_action :set_twett, only: [:show, :edit, :update, :destroy]

  # GET /twetts
  # GET /twetts.json
  def index
    @twetts = Twett.all
  end

  # GET /twetts/1
  # GET /twetts/1.json
  def show
  end

  # GET /twetts/new
  def new
    @twett = Twett.new
  end

  # GET /twetts/1/edit
  def edit
  end

  # POST /twetts
  # POST /twetts.json
  def create
    @twett = Twett.new(twett_params)

    respond_to do |format|
      if @twett.save
        format.html { redirect_to @twett, notice: 'Twett was successfully created.' }
        format.json { render :show, status: :created, location: @twett }
      else
        format.html { render :new }
        format.json { render json: @twett.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twetts/1
  # PATCH/PUT /twetts/1.json
  def update
    respond_to do |format|
      if @twett.update(twett_params)
        format.html { redirect_to @twett, notice: 'Twett was successfully updated.' }
        format.json { render :show, status: :ok, location: @twett }
      else
        format.html { render :edit }
        format.json { render json: @twett.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twetts/1
  # DELETE /twetts/1.json
  def destroy
    @twett.destroy
    respond_to do |format|
      format.html { redirect_to twetts_url, notice: 'Twett was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twett
      @twett = Twett.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twett_params
      params.require(:twett).permit(:content)
    end
end
