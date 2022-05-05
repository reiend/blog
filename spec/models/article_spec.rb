require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:article) { Article.new }

  context 'Article Parameters' do
    it '1, article must have body' do
      article.body = 'Article I\'s body'
      expect(article.body).to_not be_nil
    end

    it '2, article body must have be type string  ' do
      article.body = 'Article I\'s body'
      expect(article.body).to be_a String
    end

    it '3, article body length should be less than equal 20 but greater than equal than 3' do
      article.body = 'Article I\'s body'
      expect(article.body.size).to be <= 20 && be >= 3
    end
  end
end
