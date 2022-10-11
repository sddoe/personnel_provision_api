class Owner < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many(
    :equipments,
    class_name: 'Equipment',
    foreign_key: :owner_id,
    primary_key: :id
  )
end
