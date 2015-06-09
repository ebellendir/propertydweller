class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new
    @property.property_pic = params[:property_pic]
    @property.property_name = params[:property_name]
    @property.zip = params[:zip]
    @property.city = params[:city]
    @property.state = params[:state]
    @property.street_name = params[:street_name]
    @property.street_number = params[:street_number]
    @property.access_code = ('a'..'z').to_a.shuffle[0,8].join
    #Need to add condition that states this access code needs to be unique
    @property.prop_type_id = params[:prop_type_id]

    if @property.save
      # create a Tenancy with current_user.id and @property.id
      @property_id = @property.id
      @accesscode = @property.access_code
      redirect_to "/create_tenancy", :notice => "Property created successfully."
    else
      render 'new'
    end
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])

    @property.property_pic = params[:property_pic]
    @property.property_name = params[:property_name]
    @property.zip = params[:zip]
    @property.city = params[:city]
    @property.state = params[:state]
    @property.street_name = params[:street_name]
    @property.street_number = params[:street_number]
    @property.prop_type_id = params[:prop_type_id]

    if @property.save
      redirect_to "/properties", :notice => "Property updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @property = Property.find(params[:id])

    @property.destroy

    redirect_to "/properties", :notice => "Property deleted."
  end
end
