require 'rails_helper'

describe "Users", type: :request do 
  it 'index path respond with http success status code' do
    get '/api/users'
    expect(response.status).to eq(200)
  end
end