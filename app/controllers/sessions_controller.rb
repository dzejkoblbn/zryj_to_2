class SessionsController < ApplicationController
  def new
  end
def create
    uzytkownik = Uzytkownik.find_by(index: params[:session][:index])
    if uzytkownik && uzytkownik.authenticate(params[:session][:password])
          # Wszystko dobrze, logujemy
          log_in uzytkownik
          redirect_to uzytkownik
    else
          # Niedobrze
          render 'new'
    end
end
end
