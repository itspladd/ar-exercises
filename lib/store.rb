class Store < ActiveRecord::Base
  has_many :employees
  validates_associated :employees
  validate :must_carry_clothing_line
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than: -1}

  def must_carry_clothing_line
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:base, "store must carry at least one line of apparel")
    end
  end
end
