class FotosController < InheritedResources::Base
  belongs_to :album, :finder => :find_by_slug!



#  def new
#    @album = Album.find(params[:album_id])
#    @foto = @album.fotos.new
#  end
#
#  def create
#    @album = Album.find(params[:album_id])
#    @foto = @album.fotos.new(params[:foto])
#  end


  def create
    create!{ album_path(@album) }
  end
end
