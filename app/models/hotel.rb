class Hotel < ApplicationRecord
    belongs_to :user
    has_many :reserve_infos

    mount_uploader :image_icon, ImgUploader
end
