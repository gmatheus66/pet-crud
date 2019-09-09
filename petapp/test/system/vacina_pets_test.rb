require "application_system_test_case"

class VacinaPetsTest < ApplicationSystemTestCase
  setup do
    @vacina_pet = vacina_pets(:one)
  end

  test "visiting the index" do
    visit vacina_pets_url
    assert_selector "h1", text: "Vacina Pets"
  end

  test "creating a Vacina pet" do
    visit vacina_pets_url
    click_on "New Vacina Pet"

    fill_in "Descricao", with: @vacina_pet.descricao
    fill_in "Id seq", with: @vacina_pet.id_seq
    fill_in "Nome", with: @vacina_pet.nome
    fill_in "Preco", with: @vacina_pet.preco
    click_on "Create Vacina pet"

    assert_text "Vacina pet was successfully created"
    click_on "Back"
  end

  test "updating a Vacina pet" do
    visit vacina_pets_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @vacina_pet.descricao
    fill_in "Id seq", with: @vacina_pet.id_seq
    fill_in "Nome", with: @vacina_pet.nome
    fill_in "Preco", with: @vacina_pet.preco
    click_on "Update Vacina pet"

    assert_text "Vacina pet was successfully updated"
    click_on "Back"
  end

  test "destroying a Vacina pet" do
    visit vacina_pets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vacina pet was successfully destroyed"
  end
end
