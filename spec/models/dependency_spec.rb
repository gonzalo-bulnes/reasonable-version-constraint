require 'rails_helper'

describe Dependency do

  let(:dependency) { FactoryGirl.create(:dependency) }

  describe 'attributes', protected: true do
    it { expect(dependency).to respond_to :name }
    it { expect(dependency).to respond_to :data_updated_at }
    it { expect(dependency).to respond_to :analyzed_at }
  end

  describe 'validations', protected: true do

    it 'must have a :name' do
      expect(FactoryGirl.build(:dependency, name: '')).not_to be_valid
    end

    it 'must have a unique :name' do
      FactoryGirl.create(:dependency)
      expect(FactoryGirl.build(:dependency)).not_to be_valid
    end
  end

  it 'has a valid factory', private: true do
    expect(FactoryGirl.build(:dependency)).to be_valid
  end

  it 'has an invalid factory', private: true do
    expect(FactoryGirl.build(:invalid_dependency)).not_to be_valid
  end
end
