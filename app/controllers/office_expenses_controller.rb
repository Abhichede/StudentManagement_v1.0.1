class OfficeExpensesController < ApplicationController
  before_action :set_office_expense, only: [:show, :edit, :update, :destroy]

  # GET /office_expenses
  # GET /office_expenses.json
  def index
    if !params[:query].nil?
      @office_expenses = OfficeExpense.where("lower(expense_type) LIKE lower(?) OR lower(description) LIKE lower(?)", "%#{params[:query]}%",
                                "%#{params[:query]}%")
    else
      @office_expenses = OfficeExpense.all
    end

    respond_to do |format|
      format.html
      format.xls
    end
  end

  # GET /office_expenses/1
  # GET /office_expenses/1.json
  def show
  end

  # GET /office_expenses/new
  def new
    @office_expense = OfficeExpense.new
    @expense_types = ExpenseType.all
  end

  # GET /office_expenses/1/edit
  def edit
    @expense_types = ExpenseType.all
  end

  # POST /office_expenses
  # POST /office_expenses.json
  def create
    @office_expense = OfficeExpense.new(office_expense_params)
    @expense_types = ExpenseType.all
    types = []
    unless @expense_types.blank?
      @expense_types.each do |type|
        types.push(type.expense_type)
      end
    end

    respond_to do |format|
      if @office_expense.save
        unless types.include?(office_expense_params[:expense_type])
          @expense_type = ExpenseType.new(:expense_type => office_expense_params[:expense_type])
          @expense_type.save
        end
        format.html { redirect_to office_expenses_path, notice: 'Office expense was successfully created.' }
        format.json { render :show, status: :created, location: @office_expense }
      else
        format.html { render :new }
        format.json { render json: @office_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /office_expenses/1
  # PATCH/PUT /office_expenses/1.json
  def update
    respond_to do |format|
      if @office_expense.update(office_expense_params)
        format.html { redirect_to office_expenses_path, notice: 'Office expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @office_expense }
      else
        format.html { render :edit }
        format.json { render json: @office_expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /office_expenses/1
  # DELETE /office_expenses/1.json
  def destroy
    @office_expense.destroy
    respond_to do |format|
      format.html { redirect_to office_expenses_url, notice: 'Office expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_office_expense
      @office_expense = OfficeExpense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def office_expense_params
      params.require(:office_expense).permit(:expense_type, :description, :amount, :payment_method, :payment_descrition, :paid_by, :received_by)
    end
end
