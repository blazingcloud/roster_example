require 'spec_helper'

describe "pets/edit.html.erb" do
  before(:each) do
    @pet = assign(:pet, stub_model(Pet,
      :new_record? => false,
      :breed => "MyString",
      :name => "MyString",
      :person_id => 1
    ))
  end

  it "renders the edit pet form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => pet_path(@pet), :method => "post" do
      assert_select "input#pet_breed", :name => "pet[breed]"
      assert_select "input#pet_name", :name => "pet[name]"
      assert_select "input#pet_person_id", :name => "pet[person_id]"
    end
  end
end
