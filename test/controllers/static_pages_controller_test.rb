require "test_helper"

describe StaticPagesController do
  it "should get home" do
    get :home

    must_respond_with :success
    must_render_template :home
  end
end
