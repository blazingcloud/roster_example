require 'spec_helper'

describe "pets/show.html.erb" do
  before(:each) do
    @pet = assign(:pet, stub_model(Pet,
      :breed => "Breed",
      :name => "Name",
      :person_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Breed/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
