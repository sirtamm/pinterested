class Pin < ActiveRecord::Base
    belongs_to :user
    has_attached_file :image, :styles => { :original => "700x600>", :medium => "300x300>", :thumb => "100x100>" }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    include PgSearch
    pg_search_scope :search_pin, :against => [:description]
end
