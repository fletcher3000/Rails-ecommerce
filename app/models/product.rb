class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :condition
  belongs_to :user
  has_many :line_items

  has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\Z/

  geocoded_by :address
  after_validation :geocode
end
