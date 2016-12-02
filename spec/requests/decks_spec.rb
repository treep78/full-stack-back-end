require 'rails_helper'

RSpec.describe 'Decks API' do
  def deck_params
    # parameters for creating an article
    {
      name: 'DeckA1',
      description: 'TestDeck1'
    }
  end

  def decks
    # returns a list of all articles
    Deck.all
  end

  def deck
    # returns the first article
    Deck.first
  end

  before(:all) do
    # before each test, create an article
    # using the article params (above)
    Deck.create!(deck_params)
  end

  after(:all) do
    # delets the article after all tests have run
    Deck.delete_all
  end

  # feature test
  # we're describing what happens when a get request is made to /articles
  describe 'GET /decks' do
    # we expect the get request to return a list of all the articles
    it 'lists all decks' do
      # get is a function that takes a string, and
      # makes a get request to that adress
      get '/decks'
      # expect to get a 20(0/x) response
      expect(response).to be_success

      # sets the vaiable 'articles_resposne' to
      # the body of the http response
      decks_response = JSON.parse(response.body)
      # expect the list of articles that we get from the server to
      # be the same length as the list of articles we created
      expect(decks_response.length).to eq(decks.count)
      # check that the first article's title is equal
      # to the article title that we created
      expect(decks_response['decks'].first['name']).to eq(deck['name'])
    end
  end

  describe 'GET /decks/:id' do
    it 'shows one deck' do
      # make a get request to articles with the id of the article
      # we created before running this test
      get "/decks/#{deck.id}"

      expect(response).to be_success

      deck_response = JSON.parse(response.body)

      expect(deck_response['deck']['id']).not_to be_nil
      expect(deck_response['deck']['name']).to eq(deck_params[:name])
    end
  end

  describe 'DELETE /decks/:id' do
    it 'deletes a deck' do
      delete "/decks/#{deck.id}"

      expect(response).to be_success
      expect(response.body).to be_empty
      expect(deck).to be_nil
    end
  end

  describe 'PATCH /decks/:id' do
    def deck_diff
      {
        name: 'DeckA2',
        description: 'Test Deck 2'
      }
    end

    it 'updates a deck' do
      patch "/decks/#{deck.id}", deck: deck_diff, format: :json

      expect(response).to be_success
      expect(response.body).to be_empty
      expect(deck[:name]).to eq(deck_diff[:name])
    end
  end

  describe 'POST /decks' do
    def deck_new
      {
        name: 'DeckA3',
        description: 'Test Deck 3'
      }
    end

    it 'creates a deck' do
      post '/decks/', deck: deck_new, format: :json

      expect(response).to be_success
      deck_response = JSON.parse(response.body)
      expect(deck_response['deck']['id']).not_to be_nil
      expect(deck_response['deck']['name']).to eq(deck_new[:name])
    end
  end
end
