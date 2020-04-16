require_relative '../lib/02_cher_depute'

describe "the program get data" do
    it "should return depute name and email and must not be nil" do
      expect(deputy_informations).not_to be_nil
    end
    it "should be at least 50 deputes" do
    expect(deputy_informations.length).to be > 49
    end
end
  