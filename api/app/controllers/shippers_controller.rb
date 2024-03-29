class ShippersController < ApplicationController
  before_action :set_shipper, only: [:show, :update, :destroy]

  # GET /shippers
  def index
    @shippers = Shipper.includes(:customers, :trackings)

    render json: @shippers.as_json(:include => [:customers, :trackings])
  end

  # GET /shippers/1
  def show
    render json: @shipper
  end

  # POST /shippers
  def create
    @shipper = Shipper.new(shipper_params)

    if @shipper.save
      render json: @shipper, status: :created, location: @shipper
    else
      render json: @shipper.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shippers/1
  def update
    if @shipper.update(shipper_params)
      render json: @shipper
    else
      render json: @shipper.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shippers/1
  def destroy
    @shipper.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipper
      @shipper = Shipper.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shipper_params
      params.require(:shipper).permit(:name)
    end
end
