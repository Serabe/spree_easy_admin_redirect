require 'rails_helper'

describe Spree::Admin::RootController, type: :controller do

  context "unauthorized request" do

    before :each do
      Spree::Admin::RootController.any_instance.stub(:spree_current_user).and_return(nil)
    end

    it "redirects to orders path by default" do
      get :index, use_route: 'admin'

      expect(response).to redirect_to '/admin/orders'
    end
  end

  context "authorized request" do
    stub_authorization!

    it "redirects to orders path by default" do
      get :index, use_route: 'admin'

      expect(response).to redirect_to '/admin/orders'
    end

    it "redirects to wherever admin_root_redirects_path tells it to" do
      Spree::Admin::RootController.any_instance.stub(:admin_root_redirect_path).and_return('/grooot')

      get :index, use_route: 'admin'

      expect(response).to redirect_to '/grooot'
    end
  end
end
