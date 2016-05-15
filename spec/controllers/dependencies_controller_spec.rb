require 'rails_helper'

describe DependenciesController do

  let(:dependency_name) { 'simple_token_authentication' }
  let(:valid_params) { { dependency: { name: dependency_name }} }

  describe '#new', protected: true do

    before(:each) do
      get :new
    end

    it { expect(assigns(:dependency)).to be_a_new(Dependency) }
    it { expect(response).to render_template(:new) }
    it { expect(response).to have_http_status(:ok) }
  end

  describe '#create', protected: true do

    before(:each) do
      post :create, params: valid_params
    end

    # Doesn't properly express the find_or_create_by usage :\
    let(:dependency) { Dependency.find_by(name: dependency_name) }

    it { expect(assigns(:dependency)).not_to be_nil }
    it { expect(assigns(:dependency)).to eq dependency }
    it { expect(response).to have_http_status(:redirect) }
    it { expect(response).to redirect_to(action: :show, dependency_name: dependency_name) }
  end

  describe '#show', protected: true do

    before(:each) do
      get :show, params: { dependency_name: dependency_name }
    end

    # Doesn't properly express the find_or_create_by usage :\
    let(:dependency) { Dependency.find_by(name: dependency_name) }

    it { expect(assigns(:dependency)).not_to be_nil }
    it { expect(assigns(:dependency)).to eq dependency }
    it { expect(response).to render_template(:show) }
    it { expect(response).to have_http_status(:ok) }
  end
end
