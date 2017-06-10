class EstacaosController < ApplicationController
  before_action :set_estacao, only: [:show, :edit, :update, :destroy]

  # GET /estacaos
  # GET /estacaos.json
  def index
    @estacaos = Estacao.all
  end

  # GET /estacaos/1
  # GET /estacaos/1.json
  def show
  end

  # GET /estacaos/new
  def new
    @estacao = Estacao.new
  end

  # GET /estacaos/1/edit
  def edit
  end

  # POST /estacaos
  # POST /estacaos.json
  def create
    @estacao = Estacao.new(estacao_params)

    respond_to do |format|
      if @estacao.save
        format.html { redirect_to @estacao, notice: 'Estacao was successfully created.' }
        format.json { render :show, status: :created, location: @estacao }
      else
        format.html { render :new }
        format.json { render json: @estacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estacaos/1
  # PATCH/PUT /estacaos/1.json
  def update
    respond_to do |format|
      if @estacao.update(estacao_params)
        format.html { redirect_to @estacao, notice: 'Estacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @estacao }
      else
        format.html { render :edit }
        format.json { render json: @estacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estacaos/1
  # DELETE /estacaos/1.json
  def destroy
    @estacao.destroy
    respond_to do |format|
      format.html { redirect_to estacaos_url, notice: 'Estacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estacao
      @estacao = Estacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estacao_params
      params.require(:estacao).permit(:nome, :cidade_id)
    end
end
