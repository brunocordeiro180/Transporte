require 'test_helper'

class ItinerarioMetrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itinerario_metro = itinerario_metros(:one)
  end

  test "should get index" do
    get itinerario_metros_url
    assert_response :success
  end

  test "should get new" do
    get new_itinerario_metro_url
    assert_response :success
  end

  test "should create itinerario_metro" do
    assert_difference('ItinerarioMetro.count') do
      post itinerario_metros_url, params: { itinerario_metro: { estacao_metro_id: @itinerario_metro.estacao_metro_id, linha_metro_id: @itinerario_metro.linha_metro_id, ordem: @itinerario_metro.ordem } }
    end

    assert_redirected_to itinerario_metro_url(ItinerarioMetro.last)
  end

  test "should show itinerario_metro" do
    get itinerario_metro_url(@itinerario_metro)
    assert_response :success
  end

  test "should get edit" do
    get edit_itinerario_metro_url(@itinerario_metro)
    assert_response :success
  end

  test "should update itinerario_metro" do
    patch itinerario_metro_url(@itinerario_metro), params: { itinerario_metro: { estacao_metro_id: @itinerario_metro.estacao_metro_id, linha_metro_id: @itinerario_metro.linha_metro_id, ordem: @itinerario_metro.ordem } }
    assert_redirected_to itinerario_metro_url(@itinerario_metro)
  end

  test "should destroy itinerario_metro" do
    assert_difference('ItinerarioMetro.count', -1) do
      delete itinerario_metro_url(@itinerario_metro)
    end

    assert_redirected_to itinerario_metros_url
  end
end
