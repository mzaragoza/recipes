# encoding: utf-8
class PhotoUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  include Sprockets::Helpers::RailsHelper
  include Sprockets::Helpers::IsolatedHelper

  include CarrierWave::MimeTypes
  process :set_content_type

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
     %w(jpg jpeg gif png)
  end

  process :resize_to_fit => [800, 800]

  version :thumb do
    process :resize_to_limit => [50, 50]
  end
  version :large_thumb do
    process :resize_to_limit => [500, 500]
  end

end

