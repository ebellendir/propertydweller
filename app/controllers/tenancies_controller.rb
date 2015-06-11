class TenanciesController < ApplicationController
  #before_action :check_if_member, only: [:index, :show, :update, :destroy]

  #def check_if_member
   # tenancy = Tenancy.find(params[:id])
    #if tenancy.user_id != current_user.id
     # redirect_to "/tenancies", notice: "You do not have access"
    #end
  #end

  def index
    @tenancies = current_user.tenancies
  end

  def show
    @tenancy = Tenancy.find(params[:id])
  end

  def create
    @tenancy = Tenancy.new
    @tenancy.property_id = params[:property_id]
    @tenancy.user_id = current_user.id

    if params[:access_code] == @tenancy.property.access_code
      if @tenancy.save
        redirect_to "/tenancies", :notice => "You successfully joined the property"
      else
        redirect_to "/properties", :notice => "Save Error, Try Again"
      end
    else
      redirect_to "/properties", :notice => "The Access Code is incorrect"
    end
  end

  def update
    @tenancy = Tenancy.find(params[:id])

    @tenancy.property_id = params[:property_id]
    @tenancy.user_id = current_user.id

    if @tenancy.save
      redirect_to "/tenancies", :notice => "Tenancy updated successfully."
    else
      render '/properties'
    end
  end

  def destroy
    @tenancy = Tenancy.find(params[:id])

    @tenancy.destroy

    redirect_to "/tenancies", :notice => "Tenancy deleted."
  end
end
