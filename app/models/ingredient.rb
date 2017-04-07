class Ingredient < ApplicationRecord
  has_many :doses

  # 4.3.2.5 :dependent of http://guides.rubyonrails.org/association_basics.html
  has_many :cocktails, through: :doses, dependent: :restrict_with_exception
  validates :name, presence: true, uniqueness: true
end
