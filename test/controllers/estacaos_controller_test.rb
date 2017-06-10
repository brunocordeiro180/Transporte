require 'test_helper'

class EstacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estacao = estacaos(:one)
  end

  test "should get index" do
    get estacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_estacao_url
    assert_response :success
  end

  test "should create estacao" do
    assert_difference('Estacao.count') do
      post estacaos_url, params: { estacao: { cidade_id: @estacao.cidade_id, nome: @estacao.nome } }
    end

    assert_redirected_to estacao_url(Estacao.last)
  end

  test "should show estacao" do
    get estacao_url(@estacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_estacao_url(@estacao)
    assert_response :success
  end

  test "should update estacao" do
    patch estacao_url(@estacao), params: { estacao: { cidade_id: @estacao.cidade_id, nome: @estacao.nome } }
    assert_redirected_to estacao_url(@estacao)
  end

  test "should destroy estacao" do
    assert_difference('Estacao.count', -1) do
      delete estacao_url(@estacao)
    end

    assert_redirected_to estacaos_url
  end
end
