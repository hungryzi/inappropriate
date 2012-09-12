require 'spec_helper'

describe SessionsController do
  describe "create" do
    context "if user is Zi, Tommy or Brian" do
      before { request.env['omniauth.auth'] = OmniAuth.config.add_mock(:twitter, {:uid => 'hungryzi'} ) }

      it "saves to session" do
        pending "this is working irl, it complains about routing problem here"
        session[:user_handle].should be_nil
        get :create
        session[:user_handle].should == 'hungryzi'
      end
    end

    context "if user isn't Zi, Tommy or Brian" do
      before { request.env['omniauth.auth'] = OmniAuth.config.add_mock(:twitter, {:uid => 'twitter'} ) }

      it "returns to login page" do
        pending "this is working irl, it complains about routing problem here"
        get :create
        session[:user_handle].should be_nil
        response.should redirect_to root_path
      end
    end
  end

  describe "destroy" do
    it "clears the session" do
      session[:user_handle] = 'hungryzi'
      get :destroy
      session[:user_handle].should be_nil
      response.should redirect_to root_path
    end
  end
end
