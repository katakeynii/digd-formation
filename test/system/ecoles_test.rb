require "application_system_test_case"

class EcolesTest < ApplicationSystemTestCase
  setup do
    @ecole = ecoles(:one)
  end

  test "visiting the index" do
    visit ecoles_url
    assert_selector "h1", text: "Ecoles"
  end

  test "should create ecole" do
    visit ecoles_url
    click_on "New ecole"

    fill_in "Adresse", with: @ecole.adresse
    fill_in "Nom", with: @ecole.nom
    check "Ouvert" if @ecole.ouvert
    fill_in "Telephone", with: @ecole.telephone
    fill_in "Type", with: @ecole.type
    click_on "Create Ecole"

    assert_text "Ecole was successfully created"
    click_on "Back"
  end

  test "should update Ecole" do
    visit ecole_url(@ecole)
    click_on "Edit this ecole", match: :first

    fill_in "Adresse", with: @ecole.adresse
    fill_in "Nom", with: @ecole.nom
    check "Ouvert" if @ecole.ouvert
    fill_in "Telephone", with: @ecole.telephone
    fill_in "Type", with: @ecole.type
    click_on "Update Ecole"

    assert_text "Ecole was successfully updated"
    click_on "Back"
  end

  test "should destroy Ecole" do
    visit ecole_url(@ecole)
    click_on "Destroy this ecole", match: :first

    assert_text "Ecole was successfully destroyed"
  end
end
