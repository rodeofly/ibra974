require 'test_helper'

class DocProfsControllerTest < ActionController::TestCase
  setup do
    @doc_prof = doc_profs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doc_profs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doc_prof" do
    assert_difference('DocProf.count') do
      post :create, doc_prof: { activite_id: @doc_prof.activite_id, aide: @doc_prof.aide, competences: @doc_prof.competences, domaines: @doc_prof.domaines, level_id: @doc_prof.level_id, materiels: @doc_prof.materiels, organisation: @doc_prof.organisation, prerequis: @doc_prof.prerequis }
    end

    assert_redirected_to doc_prof_path(assigns(:doc_prof))
  end

  test "should show doc_prof" do
    get :show, id: @doc_prof
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doc_prof
    assert_response :success
  end

  test "should update doc_prof" do
    patch :update, id: @doc_prof, doc_prof: { activite_id: @doc_prof.activite_id, aide: @doc_prof.aide, competences: @doc_prof.competences, domaines: @doc_prof.domaines, level_id: @doc_prof.level_id, materiels: @doc_prof.materiels, organisation: @doc_prof.organisation, prerequis: @doc_prof.prerequis }
    assert_redirected_to doc_prof_path(assigns(:doc_prof))
  end

  test "should destroy doc_prof" do
    assert_difference('DocProf.count', -1) do
      delete :destroy, id: @doc_prof
    end

    assert_redirected_to doc_profs_path
  end
end
