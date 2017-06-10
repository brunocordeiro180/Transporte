class ItinerarioMetrosController < ApplicationController
  before_action :set_itinerario_metro, only: [:show, :edit, :update, :destroy]

  # GET /itinerario_metros
  # GET /itinerario_metros.json
  def index
    @itinerario_metros = ItinerarioMetro.all
  end

  # GET /itinerario_metros/1
  # GET /itinerario_metros/1.json
  def show
  end

  # GET /itinerario_metros/new
  def new
    @itinerario_metro = ItinerarioMetro.new
  end

  # GET /itinerario_metros/1/edit
  def edit
  end

  # POST /itinerario_metros
  # POST /itinerario_metros.json
  def create
    @itinerario_metro = ItinerarioMetro.new(itinerario_metro_params)

    respond_to do |format|
      if @itinerario_metro.save
        format.html { redirect_to @itinerario_metro, notice: 'Itinerario metro was successfully created.' }
        format.json { render :show, status: :created, location: @itinerario_metro }
      else
        format.html { render :new }
        format.json { render json: @itinerario_metro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itinerario_metros/1
  # PATCH/PUT /itinerario_metros/1.json
  def update
    respond_to do |format|
      if @itinerario_metro.update(itinerario_metro_params)
        format.html { redirect_to @itinerario_metro, notice: 'Itinerario metro was successfully updated.' }
        format.json { render :show, status: :ok, location: @itinerario_metro }
      else
        format.html { render :edit }
        format.json { render json: @itinerario_metro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itinerario_metros/1
  # DELETE /itinerario_metros/1.json
  def destroy
    @itinerario_metro.destroy
    respond_to do |format|
      format.html { redirect_to itinerario_metros_url, notice: 'Itinerario metro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itinerario_metro
      @itinerario_metro = ItinerarioMetro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def itinerario_metro_params
      params.require(:itinerario_metro).permit(:estacao_metro_id, :linha_metro_id, :ordem)
    end
end
