
url = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html"))   
townhall_urls = url.xpath('//tr//a[@class="lientxt"]/@href')
  puts townhall_urls.class