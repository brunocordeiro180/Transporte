class LinhaMetrosController < ApplicationController
  before_action :set_linha_metro, only: [:show, :edit, :update, :destroy]

  # GET /linha_metros
  # GET /linha_metros.json
  def index
    @linha_metros = LinhaMetro.all
  end

  # GET /linha_metros/1
  # GET /linha_metros/1.json
  def show
  end

  # GET /linha_metros/new
  def new
    @linha_metro = LinhaMetro.new
  end

  # GET /linha_metros/1/edit
  def edit
  end

  # POST /linha_metros
  # POST /linha_metros.json
  def create
    @linha_metro = LinhaMetro.new(linha_metro_params)

    respond_to do |format|
      if @linha_metro.save
        format.html { redirect_to @linha_metro, notice: 'Linha metro was successfully created.' }
        format.json { render :show, status: :created, location: @linha_metro }
      else
        format.html { render :new }
        format.json { render json: @linha_metro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /linha_metros/1
  # PATCH/PUT /linha_metros/1.json
  def update
    respond_to do |format|
      if @linha_metro.update(linha_metro_params)
        format.html { redirect_to @linha_metro, notice: 'Linha metro was successfully updated.' }
        format.json { render :show, status: :ok, location: @linha_metro }
      else
        format.html { render :edit }
        format.json { render json: @linha_metro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linha_metros/1
  # DELETE /linha_metros/1.json
  def destroy
    @linha_metro.destroy
    respond_to do |format|
      format.html { redirect_to linha_metros_url, notice: 'Linha metro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linha_metro
      @linha_metro = LinhaMetro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def linha_metro_params
      params.require(:linha_metro).permit(:numero_paradas, :cor, :passageiros_atendidos, :qtd_trans)
    end
end
