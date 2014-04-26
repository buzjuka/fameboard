require 'spec_helper'

describe Inscription do

  it "inscriptions attributes must not be empty" do

    inscription=Inscription.new
    expect(inscription).to be_invalid
    expect(inscription.name).to be_nil
    expect(inscription.description).to be_nil
    expect(inscription.positive).to be true
  end
end
