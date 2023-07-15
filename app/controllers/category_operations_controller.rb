class CategoryOperationsController < ApplicationController
  before_action :set_category_operation, only: %i[show edit update destroy]

  # GET /category_operations or /category_operations.json
  def index
    @category_operations = CategoryOperation.all
  end

  # GET /category_operations/1 or /category_operations/1.json
  def show; end

  # GET /category_operations/new
  def new
    @category_operation = CategoryOperation.new
  end

  # GET /category_operations/1/edit
  def edit; end

  # POST /category_operations or /category_operations.json
  def create
    @category_operation = CategoryOperation.new(category_operation_params)

    respond_to do |format|
      if @category_operation.save
        format.html do
          redirect_to category_operation_url(@category_operation),
                      notice: 'Category operation was successfully created.'
        end
        format.json { render :show, status: :created, location: @category_operation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @category_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_operations/1 or /category_operations/1.json
  def update
    respond_to do |format|
      if @category_operation.update(category_operation_params)
        format.html do
          redirect_to category_operation_url(@category_operation),
                      notice: 'Category operation was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @category_operation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @category_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_operations/1 or /category_operations/1.json
  def destroy
    @category_operation.destroy

    respond_to do |format|
      format.html { redirect_to category_operations_url, notice: 'Category operation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category_operation
    @category_operation = CategoryOperation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def category_operation_params
    params.fetch(:category_operation, {})
  end
end
