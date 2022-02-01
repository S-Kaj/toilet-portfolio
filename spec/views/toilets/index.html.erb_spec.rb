require 'rails_helper'

RSpec.describe "toilets/index", type: :view do
  before(:each) do
    assign(:toilets, [
      Toilet.create!(
        toilet_name: "Toilet Name",
        multipurpose: false,
        m_urinal: 2,
        m_room: 3,
        m_washlet: false,
        w_room: 4,
        w_washlet: false,
        remark: "Remark",
        user: nil
      ),
      Toilet.create!(
        toilet_name: "Toilet Name",
        multipurpose: false,
        m_urinal: 2,
        m_room: 3,
        m_washlet: false,
        w_room: 4,
        w_washlet: false,
        remark: "Remark",
        user: nil
      )
    ])
  end

  it "renders a list of toilets" do
    render
    assert_select "tr>td", text: "Toilet Name".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "Remark".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
