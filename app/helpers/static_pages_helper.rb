module StaticPagesHelper
  def picture_formatter(photo)
    image_tag photo_url(photo), alt: "An image is supposed to be here"
  end

  def photo_url(photo)
    "https://farm#{photo.farm}.staticflickr.com/#{photo.server}/#{photo.id}_#{photo.secret}.jpg"
  end
end
