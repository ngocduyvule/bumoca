class Note
  include Mongoid::Document
  include Mongoid::Timestamps
  field :text, :type => String
  embedded_in :post, inverse_of: :notes
  belongs_to :user
  validates_presence_of :text
end
