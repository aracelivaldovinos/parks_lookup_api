class BirdsController < ApplicationController
  def index
    @birds = Bird.page(params[:page])
    json_response(@birds)
  end
  
    def show
      @bird = Bird.find(params[:id])
      json_response(@bird)
    end
  
    def create
      @bird = Bird.create!(bird_params)
      json_response(@bird, :created)
    end
  
    def update
      @bird = Bird.find(params[:id])
      if @bird.update!(bird_params)
        render status: 200, json: {
        message: "This bird has been updated successfully."
       }
      end
    end
  
    def destroy
      @bird = Bird.find(params[:id])
      if @bird.destroy
        render status: 200, json: {
        message: "This bird has been deleted successfully."
      }
      end
    end
  
    def bird_params
      params.permit(:family_name, :common_name, :color, :geography)
    end
   

end 