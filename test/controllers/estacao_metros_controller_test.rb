require 'test_helper'

class EstacaoMetrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estacao_metro = estacao_metros(:one)
  end

  test "should get index" do
    get estacao_metros_url
    assert_response :success
  end

  test "should get new" do
    get new_estacao_metro_url
    assert_response :success
  end

  test "should create estacao_metro" do
    assert_difference('EstacaoMetro.count') do
      post estacao_metros_url, params: { estacao_metro: { cidade_id: @estacao_metro.cidade_id, nome: @estacao_metro.nome } }
    end

    assert_redirected_to estacao_metro_url(EstacaoMetro.last)
  end

  test "should show estacao_metro" do
    get estacao_metro_url(@estacao_metro)
    assert_response :success
  end

  test "should get edit" do
    get edit_estacao_metro_url(@estacao_metro)
    assert_response :success
  end

  test "should update estacao_metro" do
    patch estacao_metro_url(@estacao_metro), params: { estacao_metro: { cidade_id: @estacao_metro.cidade_id, nome: @estacao_metro.nome } }
    assert_redirected_to estacao_metro_url(@estacao_metro)
  end

  test "should destroy estacao_metro" do
    assert_difference('EstacaoMetro.count', -1) do
      delete estacao_metro_url(@estacao_metro)
    end

    assert_redirected_to estacao_metros_url
  end
end
