require_relative '../lib/01_mairie_christmas'

describe "the program get data do" do
    it "verify that the array contains some cities of Val d'Oise" do
        get_townhall_informations.each do |hash|
            break if expect(hash).to include("ARGENTEUIL")
            break if expect(hash).to include("PONTOISE")  
        end
    end 
end