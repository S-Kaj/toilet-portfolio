require 'rails_helper'

RSpec.describe "toilets/show", type: :view do
  before(:each) do
    @toilet = assign(:toilet, Toilet.create!(
      toilet_name: "Toilet Name",
      multipurpose: false,
      m_urinal: 2,
      m_room: 3,
      m_washlet: false,
      w_room: 4,
      w_washlet: false,
      remark: "Remark",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Toilet Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Remark/)
    expect(rendered).to match(//)
  end
end
