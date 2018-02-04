require 'test_helper'

class UlicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ulice = ulices(:one)
  end

  test "should get index" do
    get ulices_url
    assert_response :success
  end

  test "should get new" do
    get new_ulice_url
    assert_response :success
  end

  test "should create ulice" do
    assert_difference('Ulice.count') do
      post ulices_url, params: { ulice: { id_ulicy: @ulice.id_ulicy, nazwa_ulicy: @ulice.nazwa_ulicy, obszary_id: @ulice.obszary_id } }
    end

    assert_redirected_to ulice_url(Ulice.last)
  end

  test "should show ulice" do
    get ulice_url(@ulice)
    assert_response :success
  end

  test "should get edit" do
    get edit_ulice_url(@ulice)
    assert_response :success
  end

  test "should update ulice" do
    patch ulice_url(@ulice), params: { ulice: { id_ulicy: @ulice.id_ulicy, nazwa_ulicy: @ulice.nazwa_ulicy, obszary_id: @ulice.obszary_id } }
    assert_redirected_to ulice_url(@ulice)
  end

  test "should destroy ulice" do
    assert_difference('Ulice.count', -1) do
      delete ulice_url(@ulice)
    end

    assert_redirected_to ulices_url
  end
end
