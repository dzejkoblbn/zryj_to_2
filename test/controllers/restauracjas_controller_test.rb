require 'test_helper'

class RestauracjasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restauracja = restauracjas(:one)
  end

  test "should get index" do
    get restauracjas_url
    assert_response :success
  end

  test "should get new" do
    get new_restauracja_url
    assert_response :success
  end

  test "should create restauracja" do
    assert_difference('Restauracja.count') do
      post restauracjas_url, params: { restauracja: { id_restauracji: @restauracja.id_restauracji, kod_pocztowy_r: @restauracja.kod_pocztowy_r, nazwa_restauracji: @restauracja.nazwa_restauracji, numer_budynku_r: @restauracja.numer_budynku_r, numer_lokalu_r: @restauracja.numer_lokalu_r, opis_restauracji: @restauracja.opis_restauracji, ulica_r: @restauracja.ulica_r } }
    end

    assert_redirected_to restauracja_url(Restauracja.last)
  end

  test "should show restauracja" do
    get restauracja_url(@restauracja)
    assert_response :success
  end

  test "should get edit" do
    get edit_restauracja_url(@restauracja)
    assert_response :success
  end

  test "should update restauracja" do
    patch restauracja_url(@restauracja), params: { restauracja: { id_restauracji: @restauracja.id_restauracji, kod_pocztowy_r: @restauracja.kod_pocztowy_r, nazwa_restauracji: @restauracja.nazwa_restauracji, numer_budynku_r: @restauracja.numer_budynku_r, numer_lokalu_r: @restauracja.numer_lokalu_r, opis_restauracji: @restauracja.opis_restauracji, ulica_r: @restauracja.ulica_r } }
    assert_redirected_to restauracja_url(@restauracja)
  end

  test "should destroy restauracja" do
    assert_difference('Restauracja.count', -1) do
      delete restauracja_url(@restauracja)
    end

    assert_redirected_to restauracjas_url
  end
end
