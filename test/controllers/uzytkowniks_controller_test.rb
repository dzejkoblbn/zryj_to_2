require 'test_helper'

class UzytkowniksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uzytkownik = uzytkowniks(:one)
  end

  test "should get index" do
    get uzytkowniks_url
    assert_response :success
  end

  test "should get new" do
    get new_uzytkownik_url
    assert_response :success
  end

  test "should create uzytkownik" do
    assert_difference('Uzytkownik.count') do
      post uzytkowniks_url, params: { uzytkownik: { imie: @uzytkownik.imie, index: @uzytkownik.index, kod_pocztowy_u: @uzytkownik.kod_pocztowy_u, nazwisko: @uzytkownik.nazwisko, nr_budynku_u: @uzytkownik.nr_budynku_u, nr_mieszkania_u: @uzytkownik.nr_mieszkania_u, typ_id: @uzytkownik.typ_id, ulica_u: @uzytkownik.ulica_u, zamowienie_id: @uzytkownik.zamowienie_id } }
    end

    assert_redirected_to uzytkownik_url(Uzytkownik.last)
  end

  test "should show uzytkownik" do
    get uzytkownik_url(@uzytkownik)
    assert_response :success
  end

  test "should get edit" do
    get edit_uzytkownik_url(@uzytkownik)
    assert_response :success
  end

  test "should update uzytkownik" do
    patch uzytkownik_url(@uzytkownik), params: { uzytkownik: { imie: @uzytkownik.imie, index: @uzytkownik.index, kod_pocztowy_u: @uzytkownik.kod_pocztowy_u, nazwisko: @uzytkownik.nazwisko, nr_budynku_u: @uzytkownik.nr_budynku_u, nr_mieszkania_u: @uzytkownik.nr_mieszkania_u, typ_id: @uzytkownik.typ_id, ulica_u: @uzytkownik.ulica_u, zamowienie_id: @uzytkownik.zamowienie_id } }
    assert_redirected_to uzytkownik_url(@uzytkownik)
  end

  test "should destroy uzytkownik" do
    assert_difference('Uzytkownik.count', -1) do
      delete uzytkownik_url(@uzytkownik)
    end

    assert_redirected_to uzytkowniks_url
  end
end
