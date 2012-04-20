require 'test_helper'

module LoyaltyEngine
  class LoyaltySchemesControllerTest < ActionController::TestCase
    setup do
      @loyalty_scheme = loyalty_schemes(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:loyalty_schemes)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create loyalty_scheme" do
      assert_difference('LoyaltyScheme.count') do
        post :create, loyalty_scheme: { name: @loyalty_scheme.name, purchase: @loyalty_scheme.purchase, redeem: @loyalty_scheme.redeem, stamps_required: @loyalty_scheme.stamps_required, user_id: @loyalty_scheme.user_id }
      end
  
      assert_redirected_to loyalty_scheme_path(assigns(:loyalty_scheme))
    end
  
    test "should show loyalty_scheme" do
      get :show, id: @loyalty_scheme
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @loyalty_scheme
      assert_response :success
    end
  
    test "should update loyalty_scheme" do
      put :update, id: @loyalty_scheme, loyalty_scheme: { name: @loyalty_scheme.name, purchase: @loyalty_scheme.purchase, redeem: @loyalty_scheme.redeem, stamps_required: @loyalty_scheme.stamps_required, user_id: @loyalty_scheme.user_id }
      assert_redirected_to loyalty_scheme_path(assigns(:loyalty_scheme))
    end
  
    test "should destroy loyalty_scheme" do
      assert_difference('LoyaltyScheme.count', -1) do
        delete :destroy, id: @loyalty_scheme
      end
  
      assert_redirected_to loyalty_schemes_path
    end
  end
end
