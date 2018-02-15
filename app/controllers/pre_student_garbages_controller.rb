class PreStudentGarbagesController < ApplicationController
  before_action :set_pre_student_garbage, only: [:show, :edit, :update, :destroy]

  # GET /pre_student_garbages
  # GET /pre_student_garbages.json
  def index
    @pre_student_garbages = PreStudentGarbage.all
  end

  # GET /pre_student_garbages/1
  # GET /pre_student_garbages/1.json
  def show
  end

  # GET /pre_student_garbages/new
  def new
    @pre_student_garbage = PreStudentGarbage.new
  end

  # GET /pre_student_garbages/1/edit
  def edit
  end

  # POST /pre_student_garbages
  # POST /pre_student_garbages.json
  def create
    @pre_student_garbage = PreStudentGarbage.new(pre_student_garbage_params)

    if !pre_student_garbage_params[:student_id].blank?
      @student = Student.find(pre_student_garbage_params[:student_id])
      @fee_structure = FeeStructure.find(pre_student_garbage_params[:new_student_class])
      if @student.academic_year.id == pre_student_garbage_params[:new_academic_year].to_i
        respond_to do |format|
          format.html { redirect_to @student, alert: 'Already in same academic year.' }
        end
      else
        if @student.update(academic_year_id: pre_student_garbage_params[:new_academic_year],
                           student_class: @fee_structure.student_class,
                           division: @fee_structure.section, allocated_fee: @fee_structure.allocated_fee,
                           discount: 0, total_paid: 0)
          respond_to do |format|
            if @pre_student_garbage.save
              format.html { redirect_to @student, notice: 'Student Successfully transferred.' }
              format.json { render :show, status: :created, location: @pre_student_garbage }
            else
              format.html { render :new }
              format.json { render json: @pre_student_garbage.errors, status: :unprocessable_entity }
            end
          end
        end
      end
    end
  end

  # PATCH/PUT /pre_student_garbages/1
  # PATCH/PUT /pre_student_garbages/1.json
  def update
    respond_to do |format|
      if @pre_student_garbage.update(pre_student_garbage_params)
        format.html { redirect_to @pre_student_garbage, notice: 'Pre student garbage was successfully updated.' }
        format.json { render :show, status: :ok, location: @pre_student_garbage }
      else
        format.html { render :edit }
        format.json { render json: @pre_student_garbage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pre_student_garbages/1
  # DELETE /pre_student_garbages/1.json
  def destroy
    @pre_student_garbage.destroy
    respond_to do |format|
      format.html { redirect_to pre_student_garbages_url, notice: 'Pre student garbage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pre_student_garbage
      @pre_student_garbage = PreStudentGarbage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pre_student_garbage_params
      params.require(:pre_student_garbage).permit(:academic_year_id, :student_id, :fee_structure_id, :allocated_fee, :paid_fee, :balance_fee, :new_student_class,
      :new_academic_year)
    end
end
