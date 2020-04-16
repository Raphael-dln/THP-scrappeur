require_relative '../lib/00_dark_trader'

describe "the program get data" do
  it "should return crypto's symbol and crypto is not nil" do
    expect(crypto_name).not_to be_nil
    expect(crypto_price).not_to be_nil
  end
  it "should be at least 200 cryptocurrencies" do
  expect(crypto_name.length).to be > 199 
  expect(crypto_price.length).to be > 199 
  end
end

describe "it should be an array of hashes" do
  it "verify that the array contains the symbol for bitcoin" do
    mini_hash.each do |hash|
        break if expect(hash).to include("BTC")
        break if expect(hash).to include("ETH")  
    end
  end
end
