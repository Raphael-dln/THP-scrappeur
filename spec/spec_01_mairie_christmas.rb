require_relative '../lib/01_mairie_christmas'

describe "the program get data" do
  it "should return city name and email and must not be nil" do
    expect(get_townhall_informations).not_to be_nil
  end
  it "should be at least 50 cities" do
  expect(get_townhall_informations.length).to be > 49
  end
end

describe "the program get data do" do
  it "verify that the array contains some cities of Val d'Oise" do
  expect(get_townhall_informations).to match(hash_including("Argenteuil": "christian.bournery@ville-argenteuil.fr"))
    #get_townhall_informations.each do |hash|
    #  break if expect(hash).to include("Argenteuil => ")
    #  break if expect(hash).to include("Pontoise")  
  #end
  end 
end