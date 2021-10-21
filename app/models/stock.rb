class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    p ticker_symbol
    p Rails.application.credentials.publishable_token
    client = IEX::Api::Client.new(
      publishable_token: Rails.application.credentials.publishable_token,
      endpoint: 'https://sandbox.iexapis.com/v1'
    )
    p client
    client.price(ticker_symbol)
  end
end
