require 'test_helper'

class IdeiaProdsControllerTest < ActionController::TestCase
  setup do
    @ideia_prod = ideia_prods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ideia_prods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ideia_prod" do
    assert_difference('IdeiaProd.count') do
      post :create, ideia_prod: { cidade: @ideia_prod.cidade, descricao: @ideia_prod.descricao, email: @ideia_prod.email, nome: @ideia_prod.nome, telefone: @ideia_prod.telefone, uf: @ideia_prod.uf }
    end

    assert_redirected_to ideia_prod_path(assigns(:ideia_prod))
  end

  test "should show ideia_prod" do
    get :show, id: @ideia_prod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ideia_prod
    assert_response :success
  end

  test "should update ideia_prod" do
    put :update, id: @ideia_prod, ideia_prod: { cidade: @ideia_prod.cidade, descricao: @ideia_prod.descricao, email: @ideia_prod.email, nome: @ideia_prod.nome, telefone: @ideia_prod.telefone, uf: @ideia_prod.uf }
    assert_redirected_to ideia_prod_path(assigns(:ideia_prod))
  end

  test "should destroy ideia_prod" do
    assert_difference('IdeiaProd.count', -1) do
      delete :destroy, id: @ideia_prod
    end

    assert_redirected_to ideia_prods_path
  end
end
