require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
    it { is_expected.to have_db_column :reset_password_token }
    it { is_expected.to have_db_column :reset_password_sent_at }
    it { is_expected.to have_db_column :remember_created_at }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryBot.create(:article)).to be_valid 
    end
  end
end
