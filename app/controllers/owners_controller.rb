class OwnersController < ApplicationController
  def index
    @owners = Owner.all
    render json: @owners
  end

  def create
    @owner = Owner.new(owner_params)

    if @owner.save
      render json: @owner
    else
      render json: @owner.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    render json: Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])

    if @owner.update(owner_params)
      render json: @owner
    else
      render json: @owner.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @owner = Owner.find(params[:id])
    @owner.destroy
    render json: @owner
  end

  def equipment_list
    @owner = Owner.find(params[:id])
    @equipments = @owner.equipments
    render json: @equipments
  end

  private

  def owner_params
    params.require(:owner).permit(:email, :name)
  end
end
