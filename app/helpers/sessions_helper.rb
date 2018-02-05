module SessionsHelper

  def log_in(uzytkownik)
    session[:uzytkownik_id] = uzytkownik.id
  end
  def current_uzytkownik
    @current_uzytkownik ||= Uzytkownik.find_by(id: session[:uzytkownik_id])
  end
  def logged_in?
      !current_uzytkownik.nil?
  end
  def log_out
    session.delete(:uzytkownik_id)
    @current_uzytkownik = nil
  end
  def destroy
    log_out
    redirect_to root_url
  end
end
