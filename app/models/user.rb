class User < ApplicationRecord
    mount_uploader :img, ImgUploader
    has_secure_password

    has_many :hotels
end
