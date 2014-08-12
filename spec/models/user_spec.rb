require 'rails_helper'

RSpec.describe User, :type => :model do
  describe "the user model works" do
    subject { User.new }
    it { is_expected.to be_a(User) }
  end

  describe "is a devise model" do
    let(:user) { User.new(email: 'user@example.com') }

    subject { user }

    it { is_expected.to respond_to(:email) }

    it "#email returns a string" do
      expect(user.email).to match 'user@example.com'
    end
  end
end
