class ZamowieniesController < ApplicationController
  before_action :set_zamowieny, only: [:show, :edit, :update, :destroy]

  # GET /zamowienies
  # GET /zamowienies.json
  def index
    @zamowienies = Zamowienie.all
  end

  # GET /zamowienies/1
  # GET /zamowienies/1.json
  def show
  end

  # GET /zamowienies/new
  def new
    @zamowieny = Zamowienie.new
  end

  # GET /zamowienies/1/edit
  def edit
  end

  # POST /zamowienies
  # POST /zamowienies.json
  def create
    @zamowieny = Zamowienie.new(zamowieny_params)

    respond_to do |format|
      if @zamowieny.save
        format.html { redirect_to @zamowieny, notice: 'Zamowienie was successfully created.' }
        format.json { render :show, status: :created, location: @zamowieny }
      else
        format.html { render :new }
        format.json { render json: @zamowieny.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zamowienies/1
  # PATCH/PUT /zamowienies/1.json
  def update
    respond_to do |format|
      if @zamowieny.update(zamowieny_params)
        format.html { redirect_to @zamowieny, notice: 'Zamowienie was successfully updated.' }
        format.json { render :show, status: :ok, location: @zamowieny }
      else
        format.html { render :edit }
        format.json { render json: @zamowieny.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zamowienies/1
  # DELETE /zamowienies/1.json
  def destroy
    @zamowieny.destroy
    respond_to do |format|
      format.html { redirect_to zamowienies_url, notice: 'Zamowienie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zamowieny
      @zamowieny = Zamowienie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zamowieny_params
      params.require(:zamowieny).permit(:id_zamowienia, :data_zamowienia, :czas_realizacji, :koszt, :koszyk_id)
    end
end
