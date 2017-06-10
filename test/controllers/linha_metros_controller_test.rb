require 'test_helper'

class LinhaMetrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @linha_metro = linha_metros(:one)
  end

  test "should get index" do
    get linha_metros_url
    assert_response :success
  end

  test "should get new" do
    get new_linha_metro_url
    assert_response :success
  end

  test "should create linha_metro" do
    assert_difference('LinhaMetro.count') do
      post linha_metros_url, params: { linha_metro: { cor: @linha_metro.cor, numero_paradas: @linha_metro.numero_paradas, passageiros_atendidos: @linha_metro.passageiros_atendidos, qtd_trans: @linha_metro.qtd_trans } }
    end

    assert_redirected_to linha_metro_url(LinhaMetro.last)
  end

  test "should show linha_metro" do
    get linha_metro_url(@linha_metro)
    assert_response :success
  end

  test "should get edit" do
    get edit_linha_metro_url(@linha_metro)
    assert_response :success
  end

  test "should update linha_metro" do
    patch linha_metro_url(@linha_metro), params: { linha_metro: { cor: @linha_metro.cor, numero_paradas: @linha_metro.numero_paradas, passageiros_atendidos: @linha_metro.passageiros_atendidos, qtd_trans: @linha_metro.qtd_trans } }
    assert_redirected_to linha_metro_url(@linha_metro)
  end

  test "should destroy linha_metro" do
    assert_difference('LinhaMetro.count', -1) do
      delete linha_metro_url(@linha_metro)
    end

    assert_redirected_to linha_metros_url
  end
end
