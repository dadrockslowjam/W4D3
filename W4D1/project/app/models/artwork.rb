class ArtWork < ApplicationRecord
    validates :title, :image_url, presence: true

    belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User

    
end