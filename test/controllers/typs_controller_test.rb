require 'test_helper'

class TypsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @typ = typs(:one)
  end

  test "should get index" do
    get typs_url
    assert_response :success
  end

  test "should get new" do
    get new_typ_url
    assert_response :success
  end

  test "should create typ" do
    assert_difference('Typ.count') do
      post typs_url, params: { typ: { id_typu: @typ.id_typu, nazwa_typu: @typ.nazwa_typu } }
    end

    assert_redirected_to typ_url(Typ.last)
  end

  test "should show typ" do
    get typ_url(@typ)
    assert_response :success
  end

  test "should get edit" do
    get edit_typ_url(@typ)
    assert_response :success
  end

  test "should update typ" do
    patch typ_url(@typ), params: { typ: { id_typu: @typ.id_typu, nazwa_typu: @typ.nazwa_typu } }
    assert_redirected_to typ_url(@typ)
  end

  test "should destroy typ" do
    assert_difference('Typ.count', -1) do
      delete typ_url(@typ)
    end

    assert_redirected_to typs_url
  end
end
