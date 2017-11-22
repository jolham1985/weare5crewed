class ApartmentsController < ApplicationController

  # params.require(:apartment).permit(:address)

def index
  @apartments = Apartment.all
end

 def show
    @apartment = Apartment.find(params[:id])
 end

  def new
    @apartment = Apartment.new
  end

def create
    @apartment = Apartment.new(apartment_params)

    @apartment.landlord_id = current_user.id

    if @apartment.save
      redirect_to user_apartments_path(current_user, @apartment.id)
    else
      render 'new'
    end
  end

def edit
  @apartment = Apartment.find(params[:id])
  @apartment.landlord_id = current_user.id
end

def update
 @apartment = Apartment.find(params[:id])
   if @apartment.update(apartment_params)
      redirect_to user_apartments_path(current_user, @apartment.id)
    else
      render 'edit'
    end
  end

def destroy
 @apartment = Apartment.find(params[:id])
 @apartment.destroy
 redirect_to user_apartments_path(current_user.id)
  end
    private
    def apartment_params
      params.require(:apartment).permit(:address)
   end
  end
