class OrderdetailsController < ApplicationController
  before_action :set_orderdetail, only: %i[ show edit update destroy ]

  # GET /orderdetails or /orderdetails.json
  def index
    @orderdetails = Orderdetail.all
  end

  # GET /orderdetails/1 or /orderdetails/1.json
  def show
  end

  # GET /orderdetails/new
  def new
    @orderdetail = Orderdetail.new
  end

  # GET /orderdetails/1/edit
  def edit
  end

  # POST /orderdetails or /orderdetails.json
  def create
    @orderdetail = Orderdetail.new(orderdetail_params)

    respond_to do |format|
      if @orderdetail.save
        format.html { redirect_to orderdetail_url(@orderdetail), notice: "Orderdetail was successfully created." }
        format.json { render :show, status: :created, location: @orderdetail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @orderdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orderdetails/1 or /orderdetails/1.json
  def update
    respond_to do |format|
      if @orderdetail.update(orderdetail_params)
        format.html { redirect_to orderdetail_url(@orderdetail), notice: "Orderdetail was successfully updated." }
        format.json { render :show, status: :ok, location: @orderdetail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @orderdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderdetails/1 or /orderdetails/1.json
  def destroy
    @orderdetail.destroy

    respond_to do |format|
      format.html { redirect_to orderdetails_url, notice: "Orderdetail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orderdetail
      @orderdetail = Orderdetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def orderdetail_params
      params.require(:orderdetail).permit(:quantity, :rate, :review, :reviewdate, :order_id, :product_id)
    end
end
