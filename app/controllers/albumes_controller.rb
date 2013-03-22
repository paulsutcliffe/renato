class AlbumesController < InheritedResources::Base

  def index
    if current_cliente
      @albumes = Album.paginate(:page => params[:page], :per_page => 9).where("cliente_id = ?", current_cliente)
    else
      @albumes = Album.paginate(:page => params[:page], :per_page => 9)
    end
  end
 

  def show
    @album = Album.find(params[:id])
    @fotos = @album.fotos.all
  end

  def create
    create!{ new_album_foto_path(@album, @foto) }
  end

end
