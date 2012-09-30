require 'spec_helper'

describe JokesController do
  subject { request; response }

  describe 'GET random' do
    let(:request) { get :show, id: joke.to_param }
    let(:joke) { FactoryGirl.create(:joke) }
    it { should be_success }
  end
end
