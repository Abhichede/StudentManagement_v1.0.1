class FeeStructuresController < ApplicationController
  before_action :set_fee_structure, only: [:show, :edit, :update, :destroy]

  # GET /fee_structures
  # GET /fee_structures.json
  def index
    @fee_structures = FeeStructure.all
    @fee_structure = FeeStructure.new
  end

  # GET /fee_structures/1
  # GET /fee_structures/1.json
  def show
  end

  # GET /fee_structures/new
  def new

  end

  # GET /fee_structures/1/edit
  def edit
  end

  # POST /fee_structures
  # POST /fee_structures.json
  def create
    @fee_structure = FeeStructure.new(fee_structure_params)

    respond_to do |format|
      if @fee_structure.save
        format.html { redirect_to fee_structures_path, notice: 'Fee structure was successfully created.' }
        format.json { render :show, status: :created, location: @fee_structure }
      else
        format.html { render :new }
        format.json { render json: @fee_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fee_structures/1
  # PATCH/PUT /fee_structures/1.json
  def update
    respond_to do |format|
      if @fee_structure.update(fee_structure_params)
        format.html { redirect_to @fee_structure, notice: 'Fee structure was successfully updated.' }
        format.json { render :show, status: :ok, location: @fee_structure }
      else
        format.html { render :edit }
        format.json { render json: @fee_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fee_structures/1
  # DELETE /fee_structures/1.json
  def destroy
    @fee_structure.destroy
    respond_to do |format|
      format.html { redirect_to fee_structures_url, notice: 'Fee structure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fee_structure
      @fee_structure = FeeStructure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fee_structure_params
      params.require(:fee_structure).permit(:student_class, :section, :allocated_fee)
    end
end
