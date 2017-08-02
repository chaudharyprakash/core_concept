class StaticPagesController < ApplicationController

	def index
	end

  def users
  end

  def extra_expense
  end

  def extra_expense_list
    @extra_expense_lists = ExtraExpense.all
  end

  def rent_list
    @rent_lists = Rent.where(:status => 'approve')
  end

  def search
    search_params = params["search"]
    @extra_expense_lists = ExtraExpense.search(search_params)
  end

end
