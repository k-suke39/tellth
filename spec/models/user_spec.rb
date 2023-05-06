require 'rails_helper'

describe User do
  subject { user.valid? }
  context "when no username is entered" do
    let(:user) {build(:user, name: nil)}
    it { is_expected.to be_falsy}
  end
  context "when no username is entered" do
    let(:user) {build(:user, name: nil)}
    it { is_expected.to be_falsy}
  end
  context "when no username is entered" do
    let(:user) { build(:user, name: nil)}
    it { is_expected.to be_falsy}
  end
end
