require 'rubygems'
require 'nokogiri' 
require 'open-uri'
require 'pry'

def url 
  Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))   
end

def crypto_name
  symbol_crypto_array = url.xpath('//tr[*]/td[3]').collect(&:text)
  return symbol_crypto_array
end

def crypto_price
  price_crypto_array = url.xpath('//tr[*]/td[5]').collect(&:text)
  return price_crypto_array
end

def big_hash 
  hash_crypto = Hash[crypto_name.zip(crypto_price)]
  return hash_crypto
end

def mini_hash
  array_final = []
  big_hash.each { |key_value| array_final << {key_value[0] => key_value[1]}}
  return array_final
end

def perform
  big_hash
  mini_hash
end

perform