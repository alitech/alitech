require 'test_helper'

class SejaInvestidoresControllerTest < ActionController::TestCase
  setup do
    @seja_investidore = seja_investidores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seja_investidores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seja_investidore" do
    assert_difference('SejaInvestidore.count') do
      post :create, seja_investidore: { cidade: @seja_investidore.cidade, email: @seja_investidore.email, empresa: @seja_investidore.empresa, mensagem: @seja_investidore.mensagem, nome: @seja_investidore.nome, site: @seja_investidore.site, telefone: @seja_investidore.telefone, uf: @seja_investidore.uf }
    end

    assert_redirected_to seja_investidore_path(assigns(:seja_investidore))
  end

  test "should show seja_investidore" do
    get :show, id: @seja_investidore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seja_investidore
    assert_response :success
  end

  test "should update seja_investidore" do
    put :update, id: @seja_investidore, seja_investidore: { cidade: @seja_investidore.cidade, email: @seja_investidore.email, empresa: @seja_investidore.empresa, mensagem: @seja_investidore.mensagem, nome: @seja_investidore.nome, site: @seja_investidore.site, telefone: @seja_investidore.telefone, uf: @seja_investidore.uf }
    assert_redirected_to seja_investidore_path(assigns(:seja_investidore))
  end

  test "should destroy seja_investidore" do
    assert_difference('SejaInvestidore.count', -1) do
      delete :destroy, id: @seja_investidore
    end

    assert_redirected_to seja_investidores_path
  end
end
