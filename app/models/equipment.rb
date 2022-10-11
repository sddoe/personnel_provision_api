class Equipment < ApplicationRecord
  validates :serial, :name, :description, presence: true
  validates :serial, uniqueness: true

  belongs_to(
    :owner,
    class_name: 'Owner',
    foreign_key: :owner_id,
    primary_key: :id,
    optional: true
  )
end
