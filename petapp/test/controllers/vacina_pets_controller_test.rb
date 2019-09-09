require 'test_helper'

class VacinaPetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vacina_pet = vacina_pets(:one)
  end

  test "should get index" do
    get vacina_pets_url
    assert_response :success
  end

  test "should get new" do
    get new_vacina_pet_url
    assert_response :success
  end

  test "should create vacina_pet" do
    assert_difference('VacinaPet.count') do
      post vacina_pets_url, params: { vacina_pet: { descricao: @vacina_pet.descricao, id_seq: @vacina_pet.id_seq, nome: @vacina_pet.nome, preco: @vacina_pet.preco } }
    end

    assert_redirected_to vacina_pet_url(VacinaPet.last)
  end

  test "should show vacina_pet" do
    get vacina_pet_url(@vacina_pet)
    assert_response :success
  end

  test "should get edit" do
    get edit_vacina_pet_url(@vacina_pet)
    assert_response :success
  end

  test "should update vacina_pet" do
    patch vacina_pet_url(@vacina_pet), params: { vacina_pet: { descricao: @vacina_pet.descricao, id_seq: @vacina_pet.id_seq, nome: @vacina_pet.nome, preco: @vacina_pet.preco } }
    assert_redirected_to vacina_pet_url(@vacina_pet)
  end

  test "should destroy vacina_pet" do
    assert_difference('VacinaPet.count', -1) do
      delete vacina_pet_url(@vacina_pet)
    end

    assert_redirected_to vacina_pets_url
  end
end
