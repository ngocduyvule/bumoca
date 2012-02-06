class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, :type => String
  belongs_to :bloc
  embeds_many :notes
  validates_presence_of :title
  accepts_nested_attributes_for :notes
end
