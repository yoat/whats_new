require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :user => nil,
      :project => nil,
      :image => "MyString",
      :music => "MyString"
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input#post_user_id[name=?]", "post[user_id]"

      assert_select "input#post_project_id[name=?]", "post[project_id]"

      assert_select "input#post_image[name=?]", "post[image]"

      assert_select "input#post_music[name=?]", "post[music]"
    end
  end
end
