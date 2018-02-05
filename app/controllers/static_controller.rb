class StaticController < ApplicationController
  def index
    @some_variable = 123
    @restauracjas = Restauracja.all
    @uzytkowniks = Uzytkownik.all

  end

end
