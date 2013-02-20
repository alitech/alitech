require 'test_helper'

class FaleConoscosControllerTest < ActionController::TestCase
  setup do
    @fale_conosco = fale_conoscos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fale_conoscos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fale_conosco" do
    assert_difference('FaleConosco.count') do
      post :create, fale_conosco: { assunto: @fale_conosco.assunto, cidade: @fale_conosco.cidade, email: @fale_conosco.email, empresa: @fale_conosco.empresa, mensagem: @fale_conosco.mensagem, nome: @fale_conosco.nome, site: @fale_conosco.site, telefone: @fale_conosco.telefone, uf: @fale_conosco.uf }
    end

    assert_redirected_to fale_conosco_path(assigns(:fale_conosco))
  end

  test "should show fale_conosco" do
    get :show, id: @fale_conosco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fale_conosco
    assert_response :success
  end

  test "should update fale_conosco" do
    put :update, id: @fale_conosco, fale_conosco: { assunto: @fale_conosco.assunto, cidade: @fale_conosco.cidade, email: @fale_conosco.email, empresa: @fale_conosco.empresa, mensagem: @fale_conosco.mensagem, nome: @fale_conosco.nome, site: @fale_conosco.site, telefone: @fale_conosco.telefone, uf: @fale_conosco.uf }
    assert_redirected_to fale_conosco_path(assigns(:fale_conosco))
  end

  test "should destroy fale_conosco" do
    assert_difference('FaleConosco.count', -1) do
      delete :destroy, id: @fale_conosco
    end

    assert_redirected_to fale_conoscos_path
  end
end
