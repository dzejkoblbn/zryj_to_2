require 'test_helper'

class ZamowieniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zamowieny = zamowienies(:one)
  end

  test "should get index" do
    get zamowienies_url
    assert_response :success
  end

  test "should get new" do
    get new_zamowieny_url
    assert_response :success
  end

  test "should create zamowieny" do
    assert_difference('Zamowienie.count') do
      post zamowienies_url, params: { zamowieny: { czas_realizacji: @zamowieny.czas_realizacji, data_zamowienia: @zamowieny.data_zamowienia, id_zamowienia: @zamowieny.id_zamowienia, koszt: @zamowieny.koszt, koszyk_id: @zamowieny.koszyk_id } }
    end

    assert_redirected_to zamowieny_url(Zamowienie.last)
  end

  test "should show zamowieny" do
    get zamowieny_url(@zamowieny)
    assert_response :success
  end

  test "should get edit" do
    get edit_zamowieny_url(@zamowieny)
    assert_response :success
  end

  test "should update zamowieny" do
    patch zamowieny_url(@zamowieny), params: { zamowieny: { czas_realizacji: @zamowieny.czas_realizacji, data_zamowienia: @zamowieny.data_zamowienia, id_zamowienia: @zamowieny.id_zamowienia, koszt: @zamowieny.koszt, koszyk_id: @zamowieny.koszyk_id } }
    assert_redirected_to zamowieny_url(@zamowieny)
  end

  test "should destroy zamowieny" do
    assert_difference('Zamowienie.count', -1) do
      delete zamowieny_url(@zamowieny)
    end

    assert_redirected_to zamowienies_url
  end
end
