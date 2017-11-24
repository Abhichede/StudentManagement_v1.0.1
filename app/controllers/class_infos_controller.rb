class ClassInfosController < ApplicationController
  before_action :set_class_info, only: [:show, :edit, :update, :destroy]

  # GET /class_infos
  # GET /class_infos.json
  def index
    @class_infos = ClassInfo.all
  end

  # GET /class_infos/1
  # GET /class_infos/1.json
  def show
  end

  # GET /class_infos/new
  def new
    @class_info = ClassInfo.new
  end

  # GET /class_infos/1/edit
  def edit
  end

  # POST /class_infos
  # POST /class_infos.json
  def create
    @class_info = ClassInfo.new(class_info_params)

    respond_to do |format|
      if @class_info.save
        format.html { redirect_to @class_info, notice: 'Class info was successfully created.' }
        format.json { render :show, status: :created, location: @class_info }
      else
        format.html { render :new }
        format.json { render json: @class_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_infos/1
  # PATCH/PUT /class_infos/1.json
  def update
    respond_to do |format|
      if @class_info.update(class_info_params)
        format.html { redirect_to @class_info, notice: 'Class info was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_info }
      else
        format.html { render :edit }
        format.json { render json: @class_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_infos/1
  # DELETE /class_infos/1.json
  def destroy
    @class_info.destroy
    respond_to do |format|
      format.html { redirect_to class_infos_url, notice: 'Class info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_info
      @class_info = ClassInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_info_params
      params.require(:class_info).permit(:class_name, :address, :contact_no, :available_classes, :subjects)
    end
end
