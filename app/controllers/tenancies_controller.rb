class TenanciesController < ApplicationController
  def index
    @tenancies = current_user.tenancies
  end

  def show
    @tenancy = Tenancy.find(params[:id])
  end

  def new
    @tenancy = Tenancy.new
  end

  def create
    if @accesscode == @property.access_code

      @tenancy = Tenancy.new
      @tenancy.property_id = params[:property_id]
      @tenancy.user_id = current_user.id

      if @tenancy.save
        redirect_to "/tenancies", :notice => "Tenancy created successfully."
      else
        render 'new'
      end

    else
      redirect_to "/properties/:id", :notice => "The Access Code is incorrect"
    end
  end

  def edit
    @tenancy = Tenancy.find(params[:id])
  end

  def update
    @tenancy = Tenancy.find(params[:id])

    @tenancy.property_id = params[:property_id]
    @tenancy.user_id = current_user.id

    if @tenancy.save
      redirect_to "/tenancies", :notice => "Tenancy updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @tenancy = Tenancy.find(params[:id])

    @tenancy.destroy

    redirect_to "/tenancies", :notice => "Tenancy deleted."
  end
end
