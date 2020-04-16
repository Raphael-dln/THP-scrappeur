require 'rubygems'
require 'nokogiri' 
require 'open-uri'
require 'pry'


def deputy_url
  url = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
  deputy_url = url.xpath('//*[@id="deputes-list"]//a/@href').collect(&:text)
  url = []
  deputy_url.map do |u|
    each_deputy_url = "http://www2.assemblee-nationale.fr" + u
    url << each_deputy_url
  end
  
  return url
end

def deputy_informations
  array = []
  deputy_url.each do |x|
    doc =  Nokogiri::HTML(open(x)) 
    deputy_email = doc.xpath('//*[@id="haut-contenu-page"]/article/div[3]/div/dl/dd[4]/ul/li[2]/a').text
    deputy_full_name = doc.xpath(' //*[@id="haut-contenu-page"]/article/div[2]/h1').text
    deputy_full_name1 = deputy_full_name.gsub("Mme ", "").gsub("M. ","").split(' ')
    deputy_last_name = deputy_full_name1.delete(deputy_full_name1.last)
    deputy_first_name = deputy_full_name1.delete(deputy_full_name1.first)
  
    deputy_hash = {"first_name" => deputy_first_name, "last_name" => deputy_last_name, "email" => deputy_email}
    array << deputy_hash
  end
  puts array #comme ça le résultat s'affiche
  return array #pour les tests rspec
end

def perform
  deputy_url
  deputy_informations
end

perform

