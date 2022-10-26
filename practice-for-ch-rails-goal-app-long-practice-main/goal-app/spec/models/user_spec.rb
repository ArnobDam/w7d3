# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  session_token   :string           not null
#  password_digest :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'rails_helper'


RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'username' do
    it { should validate_presence_of(:username) }
  end

  describe 'session_token' do
    it { should validate_presence_of(:session_token) }
  end

  describe 'password_digest' do
    it { should validate_presence_of(:password_digest) }
  end

  describe 'password' do
    it { should validate_length_of(:password).is_at_least(6) } 
  end
end
