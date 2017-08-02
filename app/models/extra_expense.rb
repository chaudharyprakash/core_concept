class ExtraExpense < ApplicationRecord
  belongs_to :user

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%").order('id DESC')
    else
      puts "calll"
      order('id DESC') 
    end
  end
end
