class Person < ApplicationRecord
  has_person_name
  has_one :profession
  has_and_belongs_to_many :cases

  validates :first_name, :last_name, :presence => true

  extend FriendlyId
  friendly_id :name, use: :slugged
end
