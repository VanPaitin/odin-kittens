require 'test_helper'

describe KittensController do
  before do
    create_list(:kitten, 4)
  end

  describe "index action" do
    it "should render the index page normally" do
      get :index

      assigns(:kittens).must_equal Kitten.all
      assigns(:kittens).count.must_equal 4
      must_respond_with :success
      must_render_template :index
    end

    it "the api part should work properly" do
      get :index, format: :json

      assigns(:kittens).must_equal Kitten.all
      response.content_type.must_equal "application/json"
    end
  end

  it "should get new" do
    get :new

    must_respond_with :success
    must_render_template :new
    assigns(:kitten).must_be_kind_of Kitten
  end

  it "should get show" do
    get :show, params: { id: Kitten.first.id }

    must_render_template :show
    must_respond_with :success
    assigns(:kitten).must_equal Kitten.first
  end

  it "should get edit" do
    get :edit, params: { id: Kitten.second.id }

    assigns(:kitten).must_equal Kitten.second
    must_render_template :edit
    must_respond_with :success
  end

  describe "the create action" do
    it "kitten creation successful when parameters are right" do
      lambda {
        post :create,
             params: { kitten: attributes_for(:kitten) }
      }.must_change "Kitten.count", 1
      must_respond_with :redirect
      must_redirect_to kitten_path(Kitten.last)
      Kitten.count.must_equal 5
    end

    it "user creation not successful when name is empty" do
      lambda {
        post :create,
             params: { kitten: attributes_for(:kitten).merge(name: "") }
      }.wont_change "Kitten.count"
      must_render_template :new
    end
  end

  describe "should get update" do
    let(:last_kitten) { Kitten.last }

    before do
      @last_kitten_name = last_kitten.name
    end

    it "updates with right parameters" do
      patch :update,
            params: {
              id: last_kitten.id,
              kitten: attributes_for(:kitten).merge(name: "A new name")
            }
      must_respond_with :redirect
      @last_kitten_name.wont_equal last_kitten.reload.name
      must_redirect_to kitten_path(last_kitten)
    end

    it "does not update a kitten with the wrong parameters" do
      patch :update,
            params: {
              id: last_kitten.id,
              kitten: attributes_for(:kitten).merge(name: "")
            }
      @last_kitten_name.must_equal last_kitten.reload.name
      must_render_template :edit
    end
  end

  it "should get destroy" do
    lambda do
      delete :destroy, params: { id: Kitten.first.id }
    end.must_change "Kitten.count", -1
    must_respond_with :redirect
  end
end
