require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:body) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:comments) }
  end

  describe 'post can created' do
    it 'should create a post' do
      post = Post.new(title: 'MyString', body: 'MyText')
      expect(post).to be_valid
    end
  end
end
