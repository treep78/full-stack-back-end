require 'rails_helper'

RSpec.describe 'Cards API' do
  def card_params
    # parameters for creating an article
    {
      name: 'killer',
      card_class: 'Assassin'
    }
  end

  def cards
    # returns a list of all articles
    Card.all
  end

  def card
    # returns the first article
    Card.first
  end

  before(:all) do
    # before each test, create an article
    # using the article params (above)
    Card.create!(card_params)
  end

  after(:all) do
    # delets the article after all tests have run
    Card.delete_all
  end

  # feature test
  # we're describing what happens when a get request is made to /articles
  describe 'GET /cards' do
    # we expect the get request to return a list of all the articles
    it 'lists all cards' do
      # get is a function that takes a string, and
      # makes a get request to that adress
      get '/cards'
      # expect to get a 20(0/x) response
      expect(response).to be_success

      # sets the vaiable 'articles_resposne' to
      # the body of the http response
      cards_response = JSON.parse(response.body)
      # expect the list of articles that we get from the server to
      # be the same length as the list of articles we created
      expect(cards_response.length).to eq(cards.count)
      # check that the first article's title is equal
      # to the article title that we created
      expect(cards_response.first['name']).to eq(card['name'])
    end
  end

  describe 'GET /cards/:id' do
    it 'shows one card' do
      # make a get request to articles with the id of the article
      # we created before running this test
      get "/cards/#{card.id}"

      expect(response).to be_success

      card_response = JSON.parse(response.body)

      expect(card_response['id']).not_to be_nil
      expect(card_response['name']).to eq(card_params[:name])
    end
  end

  describe 'DELETE /cards/:id' do
    it 'deletes a card' do
      delete "/cards/#{card.id}"

      expect(response).to be_success
      expect(response.body).to be_empty
      expect(card).to be_nil
    end
  end

  describe 'PATCH /cards/:id' do
    def card_diff
      {
        name: 'killer2',
        card_class: 'Assassin'
      }
    end

    it 'updates a card' do
      patch "/cards/#{card.id}", card: card_diff, format: :json

      expect(response).to be_success
      expect(response.body).to be_empty
      expect(card[:name]).to eq(card_diff[:name])
    end
  end

  describe 'POST /cards' do
    def card_new
      {
        name: 'killer2',
        card_class: 'Assassin'
      }
    end

    it 'creates a card' do
      post '/cards/', card: card_new, format: :json

      expect(response).to be_success
      card_response = JSON.parse(response.body)
      expect(card_response['id']).not_to be_nil
      expect(card_response['name']).to eq(card_new[:name])
    end
  end
end
