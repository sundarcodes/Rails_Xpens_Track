class ExpenseEntriesController < ApplicationController
  def new
    @expense_entry_obj=current_user.expense_entries.new
  end

  def edit
  end

  def show
  end

  def destroy
  end

  def index
  end

  def create
  end
end
