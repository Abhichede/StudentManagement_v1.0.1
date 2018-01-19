class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy, :update_discount]

  # GET /students
  # GET /students.json
  def index
    if !params[:query].nil? && !params[:standard].nil? && !params[:section].nil?
      @students = Student.where("lower(first_name) LIKE lower(?) AND student_class = ? AND division = ?", "%#{params[:query]}%",
                                "#{params[:standard]}", "#{params[:section]}").order(:created_at => "DESC")
    elsif !params[:standard].nil? && !params[:section].nil?
      @students = Student.where("student_class = ? AND division = ?", "#{params[:standard]}",
                                "#{params[:section]}").order(:created_at => "DESC")
    end
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
    @fee_structure = FeeStructure.all
  end

  # GET /students/1/edit
  def edit
    @fee_structure = FeeStructure.all
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end



  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.student_fees.each do |fee|
      fee.destroy
    end
    @student.destroy
    
    respond_to do |format|

      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # custom methods
  def update_allocated_fee

    s_class = params[:s_class]
    s_section = params[:s_section]

    @allocated_fee = FeeStructure.where(:student_class => s_class,
                                       :section => s_section).limit(1).first

    respond_to do |format|
      if !@allocated_fee.blank?
        format.js {}
      else
        format.js {}
      end
    end
  end

  def update_discount
    respond_to do |format|
      if params[:discount].blank?
        format.js {}
      else
        @student.update(:discount => params[:discount])
        format.js {}
      end
    end
  end

  def print_receipt
    @payment = StudentFee.find(params[:id])
  end

  def dashboard
    @fee_structures = FeeStructure.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:first_name, :last_name,
                                      :father_name, :father_occupation,
                                      :mother_name, :address, :mobile_no,
                                      :date_of_birth, :college_name, :student_class,
                                      :admission_date, :division, :allocated_fee,
                                      :total_paid, :no_of_installments, :discount,
                                      :alternate_mobile, :academic_year_id)
    end
end
