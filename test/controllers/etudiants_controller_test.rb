require "test_helper"

class EtudiantsControllerTest < ActionDispatch::IntegrationTest
  test "should get liste" do
    get etudiants_liste_url
    assert_response :success
  end

  test "should get visualier" do
    get etudiants_visualier_url
    assert_response :success
  end

  test "should get ajouter" do
    get etudiants_ajouter_url
    assert_response :success
  end
end
