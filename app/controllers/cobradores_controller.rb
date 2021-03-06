class CobradorsController < ApplicationController
  before_action :set_cobrador, only: [:show, :edit, :update, :destroy]

  # GET /cobradores
  # GET /cobradores.json
  def index
    @cobradores = Cobrador.all
  end

  # GET /cobradores/1
  # GET /cobradores/1.json
  def show
  end

  # GET /cobradores/new
  def new
    @cobrador = Cobrador.new
  end

  # GET /cobradores/1/edit
  def edit
  end

  # POST /cobradores
  # POST /cobradores.json
  def create
    @cobrador = Cobrador.new(cobrador_params)

    respond_to do |format|
      if @cobrador.save
        format.html { redirect_to @cobrador, notice: 'Cobrador was successfully created.' }
        format.json { render :show, status: :created, location: @cobrador }
      else
        format.html { render :new }
        format.json { render json: @cobrador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cobradores/1
  # PATCH/PUT /cobradores/1.json
  def update
    respond_to do |format|
      if @cobrador.update(cobrador_params)
        format.html { redirect_to @cobrador, notice: 'Cobrador was successfully updated.' }
        format.json { render :show, status: :ok, location: @cobrador }
      else
        format.html { render :edit }
        format.json { render json: @cobrador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cobradores/1
  # DELETE /cobradores/1.json
  def destroy
    @cobrador.destroy
    respond_to do |format|
      format.html { redirect_to cobradores_url, notice: 'Cobrador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cobrador
      @cobrador = Cobrador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cobrador_params
      params.require(:cobrador).permit(:cpf, :onibus_id, :salario, :data_inicio_ser, :datanasc, :empresa_id)
    end
end
