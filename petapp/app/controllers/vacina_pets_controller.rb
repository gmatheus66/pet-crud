class VacinaPetsController < ApplicationController
  before_action :set_vacina_pet, only: [:show, :edit, :update, :destroy]

  # GET /vacina_pets
  # GET /vacina_pets.json
  def index
    @vacina_pets = VacinaPet.all
  end

  # GET /vacina_pets/1
  # GET /vacina_pets/1.json
  def show
  end

  # GET /vacina_pets/new
  def new
    @vacina_pet = VacinaPet.new
  end

  # GET /vacina_pets/1/edit
  def edit
  end

  # POST /vacina_pets
  # POST /vacina_pets.json
  def create
    @vacina_pet = VacinaPet.new(vacina_pet_params)

    respond_to do |format|
      if @vacina_pet.save
        format.html { redirect_to @vacina_pet, notice: 'Vacina pet was successfully created.' }
        format.json { render :show, status: :created, location: @vacina_pet }
      else
        format.html { render :new }
        format.json { render json: @vacina_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacina_pets/1
  # PATCH/PUT /vacina_pets/1.json
  def update
    respond_to do |format|
      if @vacina_pet.update(vacina_pet_params)
        format.html { redirect_to @vacina_pet, notice: 'Vacina pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @vacina_pet }
      else
        format.html { render :edit }
        format.json { render json: @vacina_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacina_pets/1
  # DELETE /vacina_pets/1.json
  def destroy
    @vacina_pet.destroy
    respond_to do |format|
      format.html { redirect_to vacina_pets_url, notice: 'Vacina pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacina_pet
      @vacina_pet = VacinaPet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vacina_pet_params
      params.require(:vacina_pet).permit(:nome, :id_seq, :descricao, :preco)
    end
end
