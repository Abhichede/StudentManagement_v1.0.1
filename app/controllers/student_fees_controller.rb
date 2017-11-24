class StudentFeesController < ApplicationController
  before_action :set_student_fee, only: [:show, :edit, :update, :destroy]

  # GET /student_fees
  # GET /student_fees.json
  def index
    @student_fees = StudentFee.all
  end

  # GET /student_fees/1
  # GET /student_fees/1.json
  def show
  end

  # GET /student_fees/new
  def new
    @student_fee = StudentFee.new
    @students = Student.all
  end

  # GET /student_fees/1/edit
  def edit
    @students = Student.all
  end

  # POST /student_fees
  # POST /student_fees.json
  def create
    @student_fee = StudentFee.new(student_fee_params)

    respond_to do |format|
      if @student_fee.save
        format.html { redirect_to @student_fee, notice: 'Student fee was successfully created.' }
        format.json { render :show, status: :created, location: @student_fee }
      else
        format.html { render :new }
        format.json { render json: @student_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_fees/1
  # PATCH/PUT /student_fees/1.json
  def update
    respond_to do |format|
      if @student_fee.update(student_fee_params)
        format.html { redirect_to @student_fee, notice: 'Student fee was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_fee }
      else
        format.html { render :edit }
        format.json { render json: @student_fee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_fees/1
  # DELETE /student_fees/1.json
  def destroy
    @student_fee.destroy
    respond_to do |format|
      format.html { redirect_to student_fees_url, notice: 'Student fee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_fee
      @student_fee = StudentFee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_fee_params
      params.require(:student_fee).permit(:student_id, :payment_date, :installment_no, :amount, :payment_method, :payment_desc, :paid_by, :received_by)
    end
end
