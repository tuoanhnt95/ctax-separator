class ExpensesController < ApplicationController
  before_action :set_expense, only: %i[show edit update destroy]
  def index
    @expenses = Expense.all
  end

  def show
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)
    @expense.after_tax_10 = @expense.total_amount_yen
    @expense.after_tax_0 = 0
    @after_tax_8 = Expense.after_tax_8(@expense)
    @expense.expense_type = 'meals'
    if @expense.save
      redirect_to expenses_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @expense.update(expense_params)
    if @expense.save && @expense.total_amount_yen == @expense.after_tax_10 + @expense.after_tax_0
      redirect_to expense_path(@expense)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @expense.destroy
    redirect_to expenses_path, status: :see_other
  end

  private

  def set_expense
    @expense = Expense.find(params[:id])
  end

  def expense_params
    params.require(:expense).permit(:total_amount_yen, :after_tax_10, :after_tax_0, :approved, :expense_type, :ctax10, :ctax8, :ctax0)
  end
end
