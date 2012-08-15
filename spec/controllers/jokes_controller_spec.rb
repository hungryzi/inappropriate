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
end
