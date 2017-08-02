class User < ApplicationRecord
  has_many :rents
  accepts_nested_attributes_for :rents, reject_if: :all_blank, allow_destroy: true

  has_many :extra_expenses
  accepts_nested_attributes_for :extra_expenses, reject_if: :all_blank, allow_destroy: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,  :lockable

  def full_name
    first_name + " " + last_name
  end
end
