require 'test_helper'

class CobradorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cobrador = cobradors(:one)
  end

  test "should get index" do
    get cobradors_url
    assert_response :success
  end

  test "should get new" do
    get new_cobrador_url
    assert_response :success
  end

  test "should create cobrador" do
    assert_difference('Cobrador.count') do
      post cobradors_url, params: { cobrador: { cpf: @cobrador.cpf, data_inicio_ser: @cobrador.data_inicio_ser, datanasc: @cobrador.datanasc, empresa_id: @cobrador.empresa_id, onibus_id: @cobrador.onibus_id, salario: @cobrador.salario } }
    end

    assert_redirected_to cobrador_url(Cobrador.last)
  end

  test "should show cobrador" do
    get cobrador_url(@cobrador)
    assert_response :success
  end

  test "should get edit" do
    get edit_cobrador_url(@cobrador)
    assert_response :success
  end

  test "should update cobrador" do
    patch cobrador_url(@cobrador), params: { cobrador: { cpf: @cobrador.cpf, data_inicio_ser: @cobrador.data_inicio_ser, datanasc: @cobrador.datanasc, empresa_id: @cobrador.empresa_id, onibus_id: @cobrador.onibus_id, salario: @cobrador.salario } }
    assert_redirected_to cobrador_url(@cobrador)
  end

  test "should destroy cobrador" do
    assert_difference('Cobrador.count', -1) do
      delete cobrador_url(@cobrador)
    end

    assert_redirected_to cobradors_url
  end
end
