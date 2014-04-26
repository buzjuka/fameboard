require 'spec_helper'

describe "CreateInscriptions" do
  #describe "GET /create_inscriptions" do
  #  it "works! (now write some real specs)" do
  #    get create_inscriptions_path
  #    expect(response.status).to be(200)
  #  end
  #end
  it "get index" do
    #user = FactoryGirl.create(:user)
    get inscriptions_url
    expect(response.status).to be(200)
  end

  it "get new admin" do
    get new_admin_inscription_path
    expect(response.status).to be(302)
  end
end
