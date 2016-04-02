require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :user => nil,
      :project => nil,
      :image => "Image",
      :music => "Music"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Music/)
  end
end
