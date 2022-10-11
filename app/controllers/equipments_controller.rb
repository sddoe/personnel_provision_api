class EquipmentsController < ApplicationController
  def index
    @equipments = Equipment.all
    render json: @equipments
  end

  def create
    @equipment = Equipment.new(equipment_params)

    if @equipment.save
      render json: @equipment
    else
      render json: @equipment.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    render json: Equipment.find(params[:id])
  end

  def update
    @equipment = Equipment.find(params[:id])

    if @equipment.update(equipment_params)
      render json: @equipment
    else
      render json: @equipment.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy
    render json: @equipment
  end

  private

  def equipment_params
    params.require(:equipment).permit(:serial, :name, :description, :operating_system, :date_of_assignment, :owner_id)
  end
end
