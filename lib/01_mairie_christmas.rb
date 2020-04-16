require 'rubygems'
require 'nokogiri' 
require 'open-uri'
require 'pry'

def url 
  Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html"))   
end

def get_townhall_urls
  townhall_urls = url.xpath('//tr//a[@class="lientxt"]/@href').collect(&:text)
  urls = []
   townhall_urls.map do |url|
  townhall_url_dotless = "https://www.annuaire-des-mairies.com/" + url.gsub("./", "")
    urls << townhall_url_dotless
 end
return urls
end

def get_townhall_email
  tableau = []
  get_townhall_urls.each do |x|
  doc =  Nokogiri::HTML(open(x)) 
  townhall_email = doc.xpath('//section[2]/div/table/tbody/tr[4]/td[2]').text
  city_name = doc.xpath('//a[@class="lientxt4"]').text.capitalize
  hash_town = {city_name => townhall_email}

  tableau << hash_town
  end
  puts tableau
end


def perform
  get_townhall_urls
  get_townhall_email
 # get_townhall_name
end

perform