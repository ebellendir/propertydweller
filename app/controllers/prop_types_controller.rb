class PropTypesController < ApplicationController
  def index
    @prop_types = PropType.all
  end

  def show
    @prop_type = PropType.find(params[:id])
  end

  def new
    @prop_type = PropType.new
  end

  def create
    @prop_type = PropType.new
    @prop_type.layout_type = params[:layout_type]

    if @prop_type.save
      redirect_to "/prop_types", :notice => "Prop type created successfully."
    else
      render 'new'
    end
  end

  def edit
    @prop_type = PropType.find(params[:id])
  end

  def update
    @prop_type = PropType.find(params[:id])

    @prop_type.layout_type = params[:layout_type]

    if @prop_type.save
      redirect_to "/prop_types", :notice => "Prop type updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @prop_type = PropType.find(params[:id])

    @prop_type.destroy

    redirect_to "/prop_types", :notice => "Prop type deleted."
  end
end
