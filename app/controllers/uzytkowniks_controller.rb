class UzytkowniksController < ApplicationController
  before_action :set_uzytkownik, only: [:show, :edit, :update, :destroy]

  # GET /uzytkowniks
  # GET /uzytkowniks.json
  def index
    @uzytkowniks = Uzytkownik.all
  end

  # GET /uzytkowniks/1
  # GET /uzytkowniks/1.json
  def show
  end

  # GET /uzytkowniks/new
  def new
    @uzytkownik = Uzytkownik.new
  end

  # GET /uzytkowniks/1/edit
  def edit
  end

  # POST /uzytkowniks
  # POST /uzytkowniks.json
  def create
    @uzytkownik = Uzytkownik.new(uzytkownik_params)

    respond_to do |format|
      if @uzytkownik.save
        format.html { redirect_to @uzytkownik, notice: 'Uzytkownik was successfully created.' }
        format.json { render :show, status: :created, location: @uzytkownik }
      else
        format.html { render :new }
        format.json { render json: @uzytkownik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uzytkowniks/1
  # PATCH/PUT /uzytkowniks/1.json
  def update
    respond_to do |format|
      if @uzytkownik.update(uzytkownik_params)
        format.html { redirect_to @uzytkownik, notice: 'Uzytkownik was successfully updated.' }
        format.json { render :show, status: :ok, location: @uzytkownik }
      else
        format.html { render :edit }
        format.json { render json: @uzytkownik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uzytkowniks/1
  # DELETE /uzytkowniks/1.json
  def destroy
    @uzytkownik.destroy
    respond_to do |format|
      format.html { redirect_to uzytkowniks_url, notice: 'Uzytkownik was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uzytkownik
      @uzytkownik = Uzytkownik.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uzytkownik_params
      params.require(:uzytkownik).permit(:index, :imie, :nazwisko, :kod_pocztowy_u, :ulica_u, :nr_budynku_u, :nr_mieszkania_u, :typ_id, :zamowienie_id, :password, :password_confirmation)
    end
end
