require_relative '../lib/00_dark_trader'



# vérifier que le scrappeur récupère au moins X cryptomonnaies
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
  it "should be an array of hashes " do
    expect(mini_hash).not_to be_nil
  end
end

# vérifier la présence de 2-3 cryptomonnaies phares (avec un cours non nil et non nul)
=begin
describe "the most importants cryptocurrencies are present" do
  it "should return a value (not nil nor nul) for Bitcoin" do
    expect("BTC").not_to be_nil
  end
  it "should return a value (not nil nor nul) for Ethereum" do
    expect("ETH").not_to be_nil
  end
end
=end