require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'DB columns' do
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :comment }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :article }
  end

  describe 'Comment Factory' do 
    it 'Should have valid Factory' do
      expect(FactoryGirl.create(:comment)).to be_valid
    end
  end
end
