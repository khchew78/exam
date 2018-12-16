class PhotoGallery < ApplicationRecord
    has_one_attached :image
    
    # def thumbnail input
    #   return self.images[input].variant(resize: '300x300!').processed
    # end
end
