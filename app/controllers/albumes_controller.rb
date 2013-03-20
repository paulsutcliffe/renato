class AlbumesController < InheritedResources::Base


  def show
    @album = Album.find(params[:id])
    @fotos = @album.fotos.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @album }
    end
  end

end
