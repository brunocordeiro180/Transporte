class LinhaCartaosController < ApplicationController
  before_action :set_linha_cartao, only: [:show, :edit, :update, :destroy]

  # GET /linha_cartaos
  # GET /linha_cartaos.json
  def index
    @linha_cartaos = LinhaCartao.all
  end

  # GET /linha_cartaos/1
  # GET /linha_cartaos/1.json
  def show
  end

  # GET /linha_cartaos/new
  def new
    @linha_cartao = LinhaCartao.new
  end

  # GET /linha_cartaos/1/edit
  def edit
  end

  # POST /linha_cartaos
  # POST /linha_cartaos.json
  def create
    @linha_cartao = LinhaCartao.new(linha_cartao_params)

    respond_to do |format|
      if @linha_cartao.save
        format.html { redirect_to @linha_cartao, notice: 'Linha cartao was successfully created.' }
        format.json { render :show, status: :created, location: @linha_cartao }
      else
        format.html { render :new }
        format.json { render json: @linha_cartao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /linha_cartaos/1
  # PATCH/PUT /linha_cartaos/1.json
  def update
    respond_to do |format|
      if @linha_cartao.update(linha_cartao_params)
        format.html { redirect_to @linha_cartao, notice: 'Linha cartao was successfully updated.' }
        format.json { render :show, status: :ok, location: @linha_cartao }
      else
        format.html { render :edit }
        format.json { render json: @linha_cartao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linha_cartaos/1
  # DELETE /linha_cartaos/1.json
  def destroy
    @linha_cartao.destroy
    respond_to do |format|
      format.html { redirect_to linha_cartaos_url, notice: 'Linha cartao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linha_cartao
      @linha_cartao = LinhaCartao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def linha_cartao_params
      params.require(:linha_cartao).permit(:cartao_id, :linha_id)
    end
end
