class SongsController < ApplicationController
  def new
    @singer = Singer.find(params[:id])
    @song = @singer.songs.build
   
  end
  def create
    @singer = Singer.find(params[:id])
    @song = @singer.songs.build(song_param) 
    if @song.save
      redirect_to new_song_path(:id => @singer.id)
      #code
    end
    
  end
    def destroy
      @song = Song.find(params[:id])
    @song.destroy
    respond_to do |format|
      format.html { redirect_to new_singer_path }
      format.json { head :no_content }
     
    end
  end
  
    def song_param
    params.require(:song).permit(:song ,:link, :year)
  end
  
end
