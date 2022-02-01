require 'rails_helper'

RSpec.describe "toilets/new", type: :view do
  before(:each) do
    assign(:toilet, Toilet.new(
      toilet_name: "MyString",
      multipurpose: false,
      m_urinal: 1,
      m_room: 1,
      m_washlet: false,
      w_room: 1,
      w_washlet: false,
      remark: "MyString",
      user: nil
    ))
  end

  it "renders new toilet form" do
    render

    assert_select "form[action=?][method=?]", toilets_path, "post" do

      assert_select "input[name=?]", "toilet[toilet_name]"

      assert_select "input[name=?]", "toilet[multipurpose]"

      assert_select "input[name=?]", "toilet[m_urinal]"

      assert_select "input[name=?]", "toilet[m_room]"

      assert_select "input[name=?]", "toilet[m_washlet]"

      assert_select "input[name=?]", "toilet[w_room]"

      assert_select "input[name=?]", "toilet[w_washlet]"

      assert_select "input[name=?]", "toilet[remark]"

      assert_select "input[name=?]", "toilet[user_id]"
    end
  end
end
