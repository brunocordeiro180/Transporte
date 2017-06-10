require 'test_helper'

class CondutorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @condutor = condutors(:one)
  end

  test "should get index" do
    get condutors_url
    assert_response :success
  end

  test "should get new" do
    get new_condutor_url
    assert_response :success
  end

  test "should create condutor" do
    assert_difference('Condutor.count') do
      post condutors_url, params: { condutor: { cpf: @condutor.cpf, data_inicio_serv: @condutor.data_inicio_serv, datanasc: @condutor.datanasc, empresa_id: @condutor.empresa_id, onibus_id: @condutor.onibus_id, salario: @condutor.salario } }
    end

    assert_redirected_to condutor_url(Condutor.last)
  end

  test "should show condutor" do
    get condutor_url(@condutor)
    assert_response :success
  end

  test "should get edit" do
    get edit_condutor_url(@condutor)
    assert_response :success
  end

  test "should update condutor" do
    patch condutor_url(@condutor), params: { condutor: { cpf: @condutor.cpf, data_inicio_serv: @condutor.data_inicio_serv, datanasc: @condutor.datanasc, empresa_id: @condutor.empresa_id, onibus_id: @condutor.onibus_id, salario: @condutor.salario } }
    assert_redirected_to condutor_url(@condutor)
  end

  test "should destroy condutor" do
    assert_difference('Condutor.count', -1) do
      delete condutor_url(@condutor)
    end

    assert_redirected_to condutors_url
  end
end
