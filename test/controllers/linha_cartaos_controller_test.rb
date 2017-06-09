require 'test_helper'

class LinhaCartaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @linha_cartao = linha_cartaos(:one)
  end

  test "should get index" do
    get linha_cartaos_url
    assert_response :success
  end

  test "should get new" do
    get new_linha_cartao_url
    assert_response :success
  end

  test "should create linha_cartao" do
    assert_difference('LinhaCartao.count') do
      post linha_cartaos_url, params: { linha_cartao: { cartao_id: @linha_cartao.cartao_id, linha_id: @linha_cartao.linha_id } }
    end

    assert_redirected_to linha_cartao_url(LinhaCartao.last)
  end

  test "should show linha_cartao" do
    get linha_cartao_url(@linha_cartao)
    assert_response :success
  end

  test "should get edit" do
    get edit_linha_cartao_url(@linha_cartao)
    assert_response :success
  end

  test "should update linha_cartao" do
    patch linha_cartao_url(@linha_cartao), params: { linha_cartao: { cartao_id: @linha_cartao.cartao_id, linha_id: @linha_cartao.linha_id } }
    assert_redirected_to linha_cartao_url(@linha_cartao)
  end

  test "should destroy linha_cartao" do
    assert_difference('LinhaCartao.count', -1) do
      delete linha_cartao_url(@linha_cartao)
    end

    assert_redirected_to linha_cartaos_url
  end
end
