require 'test_helper'

class CartaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cartao = cartaos(:one)
  end

  test "should get index" do
    get cartaos_url
    assert_response :success
  end

  test "should get new" do
    get new_cartao_url
    assert_response :success
  end

  test "should create cartao" do
    assert_difference('Cartao.count') do
      post cartaos_url, params: { cartao: { data_cadastro: @cartao.data_cadastro, data_vencimento: @cartao.data_vencimento, saldo: @cartao.saldo, usuario_id: @cartao.usuario_id } }
    end

    assert_redirected_to cartao_url(Cartao.last)
  end

  test "should show cartao" do
    get cartao_url(@cartao)
    assert_response :success
  end

  test "should get edit" do
    get edit_cartao_url(@cartao)
    assert_response :success
  end

  test "should update cartao" do
    patch cartao_url(@cartao), params: { cartao: { data_cadastro: @cartao.data_cadastro, data_vencimento: @cartao.data_vencimento, saldo: @cartao.saldo, usuario_id: @cartao.usuario_id } }
    assert_redirected_to cartao_url(@cartao)
  end

  test "should destroy cartao" do
    assert_difference('Cartao.count', -1) do
      delete cartao_url(@cartao)
    end

    assert_redirected_to cartaos_url
  end
end
