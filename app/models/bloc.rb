class Bloc
  include Mongoid::Document
  field :name, :type => String
  field :text, :type => String
  field :image, :type => String
end
