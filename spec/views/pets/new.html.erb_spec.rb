require 'spec_helper'

describe "pets/new.html.erb" do
  before(:each) do
    assign(:pet, stub_model(Pet,
      :breed => "MyString",
      :name => "MyString",
      :person_id => 1
    ).as_new_record)
  end

  it "renders new pet form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => pets_path, :method => "post" do
      assert_select "input#pet_breed", :name => "pet[breed]"
      assert_select "input#pet_name", :name => "pet[name]"
      assert_select "input#pet_person_id", :name => "pet[person_id]"
    end
  end
end
