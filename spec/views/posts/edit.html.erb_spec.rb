require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :user => nil,
      :project => nil,
      :image => "MyString",
      :music => "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_user_id[name=?]", "post[user_id]"

      assert_select "input#post_project_id[name=?]", "post[project_id]"

      assert_select "input#post_image[name=?]", "post[image]"

      assert_select "input#post_music[name=?]", "post[music]"
    end
  end
end
