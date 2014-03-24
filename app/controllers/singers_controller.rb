class SingersController < ApplicationController
   before_filter :authenticate
  def new
    @singer = Singer.new
    @singers = Singer.find(:all)
  end
  def create
    @singer = Singer.new(singer_params)
    if @singer.save
      redirect_to new_singer_path
      #code
    end
    
  end
  def singer_params
    params.require(:singer).permit(:name , :place)
  end
   def authenticate
     authenticate_or_request_with_http_basic do |username , password|
          username == "kishore" && password == "kishore"
  end
   end
end
