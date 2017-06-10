class EstacaoMetrosController < ApplicationController
  before_action :set_estacao_metro, only: [:show, :edit, :update, :destroy]

  # GET /estacao_metros
  # GET /estacao_metros.json
  def index
    @estacao_metros = EstacaoMetro.all
  end

  # GET /estacao_metros/1
  # GET /estacao_metros/1.json
  def show
  end

  # GET /estacao_metros/new
  def new
    @estacao_metro = EstacaoMetro.new
  end

  # GET /estacao_metros/1/edit
  def edit
  end

  # POST /estacao_metros
  # POST /estacao_metros.json
  def create
    @estacao_metro = EstacaoMetro.new(estacao_metro_params)

    respond_to do |format|
      if @estacao_metro.save
        format.html { redirect_to @estacao_metro, notice: 'Estacao metro was successfully created.' }
        format.json { render :show, status: :created, location: @estacao_metro }
      else
        format.html { render :new }
        format.json { render json: @estacao_metro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estacao_metros/1
  # PATCH/PUT /estacao_metros/1.json
  def update
    respond_to do |format|
      if @estacao_metro.update(estacao_metro_params)
        format.html { redirect_to @estacao_metro, notice: 'Estacao metro was successfully updated.' }
        format.json { render :show, status: :ok, location: @estacao_metro }
      else
        format.html { render :edit }
        format.json { render json: @estacao_metro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estacao_metros/1
  # DELETE /estacao_metros/1.json
  def destroy
    @estacao_metro.destroy
    respond_to do |format|
      format.html { redirect_to estacao_metros_url, notice: 'Estacao metro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estacao_metro
      @estacao_metro = EstacaoMetro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estacao_metro_params
      params.require(:estacao_metro).permit(:nome, :cidade_id)
    end
end
