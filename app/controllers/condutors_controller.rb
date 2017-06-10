class CondutorsController < ApplicationController
  before_action :set_condutor, only: [:show, :edit, :update, :destroy]

  # GET /condutors
  # GET /condutors.json
  def index
    @condutors = Condutor.all
  end

  # GET /condutors/1
  # GET /condutors/1.json
  def show
  end

  # GET /condutors/new
  def new
    @condutor = Condutor.new
  end

  # GET /condutors/1/edit
  def edit
  end

  # POST /condutors
  # POST /condutors.json
  def create
    @condutor = Condutor.new(condutor_params)

    respond_to do |format|
      if @condutor.save
        format.html { redirect_to @condutor, notice: 'Condutor was successfully created.' }
        format.json { render :show, status: :created, location: @condutor }
      else
        format.html { render :new }
        format.json { render json: @condutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /condutors/1
  # PATCH/PUT /condutors/1.json
  def update
    respond_to do |format|
      if @condutor.update(condutor_params)
        format.html { redirect_to @condutor, notice: 'Condutor was successfully updated.' }
        format.json { render :show, status: :ok, location: @condutor }
      else
        format.html { render :edit }
        format.json { render json: @condutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /condutors/1
  # DELETE /condutors/1.json
  def destroy
    @condutor.destroy
    respond_to do |format|
      format.html { redirect_to condutors_url, notice: 'Condutor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condutor
      @condutor = Condutor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def condutor_params
      params.require(:condutor).permit(:cpf, :onibus_id, :salario, :data_inicio_serv, :datanasc, :empresa_id)
    end
end
