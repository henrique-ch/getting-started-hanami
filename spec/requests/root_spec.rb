# frozen_string_literal: true

RSpec.describe "Root", type: :request do
  it "is successful" do
    get "/books"

    # Find me in `config/routes.rb`
    expect(last_response).to be_successful
    expect(last_response.body).to eq("application/json; charset=utf-8")

    response_body = JSON.parse(last_response.body)

  expect(response_body).to eq([
      {"title" => "Test Driven Development"}
      {"title" => "Practical Object-Oriented Desing in Ruby"}
    ])
  end
end
