require 'rails_helper'

RSpec.describe 'ArticlesControllers', type: :request do
  describe 'GET /articles/new' do
    it 'returns the new page' do
      get '/articles/new'
      expect(response).to have_http_status(200)
    end
  end

  # # POT Category
  # describe 'POST /categories' do
  #   it 'creates a new category' do
  #     post '/categories', params: { category: { title: 'New Category', description: 'Fresh na fresh' } }

  #     expect(response).to have_http_status(302)
  #   end
  # end

  # # Edit Category
  # describe 'GET /categories/1/edit' do
  #   it 'returns the edit page' do
  #     category = Category.create!(title: 'New Category', description: 'Fresh na fresh')
  #     get "/categories/#{category.id}/edit"

  #     expect(response).to have_http_status(200)
  #   end
  # end

  # # Show Category
  # describe 'GET /categories/1/show' do
  #   it 'returns the show page' do
  #     category = Category.create!(title: 'Show Category', description: 'Fresh na fresh')
  #     get "/categories/#{category.id}/show"

  #     expect(response).to have_http_status(200)
  #   end
  # end
end
