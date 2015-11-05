class Post < ActiveRecord::Base
  validates_presence_of :body, :title

  belongs_to :blog
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
