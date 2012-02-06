class Bloc
  include Mongoid::Document
  field :position, :type => Integer
  field :name, :type => String
  field :text, :type => String
  field :image, :type => String
  field :type, :type => String
  field :code, :type => String
  has_many :posts
end
