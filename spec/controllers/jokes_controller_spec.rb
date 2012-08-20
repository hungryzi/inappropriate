require 'spec_helper'

describe JokesController do
  subject { request; response }

  describe 'GET index' do
    let(:request) { get :index }
    it { should be_success }
  end

  describe 'GET show' do
    let(:request) { get :show, id: joke.to_param }
    let(:joke) { FactoryGirl.create(:joke) }
    it { should be_success }
  end

  describe 'GET new' do
    let(:request) { get :new }
    it { should be_success }
    it "has built a new joke" do
      request
      assigns(:joke).should be_present
    end
  end

  describe 'POST create' do
    let(:request) { post :create, params }
    let(:params) { { joke: { content: content, credit: credit } } }
    let(:content) { "What does a fish say when it runs into a wall? Damn." }
    let(:credit) { "favorite joke of @sillylogger" }

    it "should create a new joke" do
      expect { request }.to change(Joke, :count).by(1)
      should redirect_to new_joke_path

      created = Joke.first
      created.content.should == content
      created.credit.should == credit
    end

    context "invalid joke" do
      let(:content) { "" }

      it "shouldn't create a new joke" do
        expect{ request }.not_to change(Joke, :count)
        response.status.should == 401
      end
    end
  end
end
