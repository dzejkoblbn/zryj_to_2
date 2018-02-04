class RestauracjasController < ApplicationController
  before_action :set_restauracja, only: [:show, :edit, :update, :destroy]

  # GET /restauracjas
  # GET /restauracjas.json
  def index
    @restauracjas = Restauracja.all
  end

  # GET /restauracjas/1
  # GET /restauracjas/1.json
  def show
  end

  # GET /restauracjas/new
  def new
    @restauracja = Restauracja.new
  end

  # GET /restauracjas/1/edit
  def edit
  end

  # POST /restauracjas
  # POST /restauracjas.json
  def create
    @restauracja = Restauracja.new(restauracja_params)

    respond_to do |format|
      if @restauracja.save
        format.html { redirect_to @restauracja, notice: 'Restauracja was successfully created.' }
        format.json { render :show, status: :created, location: @restauracja }
      else
        format.html { render :new }
        format.json { render json: @restauracja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restauracjas/1
  # PATCH/PUT /restauracjas/1.json
  def update
    respond_to do |format|
      if @restauracja.update(restauracja_params)
        format.html { redirect_to @restauracja, notice: 'Restauracja was successfully updated.' }
        format.json { render :show, status: :ok, location: @restauracja }
      else
        format.html { render :edit }
        format.json { render json: @restauracja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restauracjas/1
  # DELETE /restauracjas/1.json
  def destroy
    @restauracja.destroy
    respond_to do |format|
      format.html { redirect_to restauracjas_url, notice: 'Restauracja was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restauracja
      @restauracja = Restauracja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restauracja_params
      params.require(:restauracja).permit(:id_restauracji, :nazwa_restauracji, :opis_restauracji, :kod_pocztowy_r, :ulica_r, :numer_budynku_r, :numer_lokalu_r)
    end
end
