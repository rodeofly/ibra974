require 'test_helper'

class ActivitesControllerTest < ActionController::TestCase
  setup do
    @activite = activites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activite" do
    assert_difference('Activite.count') do
      post :create, activite: { archetype_id: @activite.archetype_id, categorie_id: @activite.categorie_id, citation_id: @activite.citation_id, doc1_id: @activite.doc1_id, doc2_id: @activite.doc2_id, docEval_id: @activite.docEval_id, docProf_id: @activite.docProf_id, enonce: @activite.enonce, level_id: @activite.level_id, schedule_at: @activite.schedule_at, title: @activite.title, url: @activite.url }
    end

    assert_redirected_to activite_path(assigns(:activite))
  end

  test "should show activite" do
    get :show, id: @activite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @activite
    assert_response :success
  end

  test "should update activite" do
    patch :update, id: @activite, activite: { archetype_id: @activite.archetype_id, categorie_id: @activite.categorie_id, citation_id: @activite.citation_id, doc1_id: @activite.doc1_id, doc2_id: @activite.doc2_id, docEval_id: @activite.docEval_id, docProf_id: @activite.docProf_id, enonce: @activite.enonce, level_id: @activite.level_id, schedule_at: @activite.schedule_at, title: @activite.title, url: @activite.url }
    assert_redirected_to activite_path(assigns(:activite))
  end

  test "should destroy activite" do
    assert_difference('Activite.count', -1) do
      delete :destroy, id: @activite
    end

    assert_redirected_to activites_path
  end
end
