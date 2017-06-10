require 'test_helper'

class MetrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metro = metros(:one)
  end

  test "should get index" do
    get metros_url
    assert_response :success
  end

  test "should get new" do
    get new_metro_url
    assert_response :success
  end

  test "should create metro" do
    assert_difference('Metro.count') do
      post metros_url, params: { metro: { data_inicio_operacao: @metro.data_inicio_operacao, empresa_id: @metro.empresa_id, linha_metro_id: @metro.linha_metro_id, qtd_passageiros: @metro.qtd_passageiros, ultima_revisao: @metro.ultima_revisao } }
    end

    assert_redirected_to metro_url(Metro.last)
  end

  test "should show metro" do
    get metro_url(@metro)
    assert_response :success
  end

  test "should get edit" do
    get edit_metro_url(@metro)
    assert_response :success
  end

  test "should update metro" do
    patch metro_url(@metro), params: { metro: { data_inicio_operacao: @metro.data_inicio_operacao, empresa_id: @metro.empresa_id, linha_metro_id: @metro.linha_metro_id, qtd_passageiros: @metro.qtd_passageiros, ultima_revisao: @metro.ultima_revisao } }
    assert_redirected_to metro_url(@metro)
  end

  test "should destroy metro" do
    assert_difference('Metro.count', -1) do
      delete metro_url(@metro)
    end

    assert_redirected_to metros_url
  end
end
