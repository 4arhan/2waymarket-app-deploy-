class Item < ApplicationRecord
  extend FriendlyId
 friendly_id :name, use: :slugged
   belongs_to :user
   has_many :sales
   has_attached_file :image

      validates_attachment_content_type :image,
      content_type:  /^image\/(png|gif|jpeg)/,
      message: "Only images allowed"

      validates :image, attachment_presence: true

      validates_numericality_of :price,
      greather_then: 1.00, message: "Must be at least 1 Dollar"

end
