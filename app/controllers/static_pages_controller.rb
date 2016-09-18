class StaticPagesController < ApplicationController
  before_action :check_id_integrity, only: :get_images

  def home
  end

  def get_images
    begin
      @photos = flickr.photos.search(user_id: params[:flickr_id]).to_a.in_groups_of 2
      if @photos.empty?
        flash[:info] = "You have no photos. Do upload some photos and you will see them here"
      end
    rescue FlickRaw::FailedResponse
      flash.now[:danger] = "We are sorry but Flickr does not know that id"
    end
    respond_to :js
  end

  private

  def check_id_integrity
    if params[:flickr_id].blank? || !params[:flickr_id].include?("@")
      @message = "Invalid id, please enter an id that has the @symbol"
    end
  end
end
