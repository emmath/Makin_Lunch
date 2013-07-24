require 'test_helper'

class IngredientshipsControllerTest < ActionController::TestCase
  setup do
    @ingredientship = ingredientships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingredientships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingredientship" do
    assert_difference('Ingredientship.count') do
      post :create, ingredientship: { amount: @ingredientship.amount, style: @ingredientship.style }
    end

    assert_redirected_to ingredientship_path(assigns(:ingredientship))
  end

  test "should show ingredientship" do
    get :show, id: @ingredientship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingredientship
    assert_response :success
  end

  test "should update ingredientship" do
    put :update, id: @ingredientship, ingredientship: { amount: @ingredientship.amount, style: @ingredientship.style }
    assert_redirected_to ingredientship_path(assigns(:ingredientship))
  end

  test "should destroy ingredientship" do
    assert_difference('Ingredientship.count', -1) do
      delete :destroy, id: @ingredientship
    end

    assert_redirected_to ingredientships_path
  end
end
