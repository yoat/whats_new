require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :user => nil,
        :project => nil,
        :image => "Image",
        :music => "Music"
      ),
      Post.create!(
        :user => nil,
        :project => nil,
        :image => "Image",
        :music => "Music"
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Music".to_s, :count => 2
  end
end
