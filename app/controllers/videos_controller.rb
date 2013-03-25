class VideosController < InheritedResources::Base

  def index
    @videos = Video.paginate(:page => params[:page], :per_page => 9)
  end

  def create
    create!{videos_path}
  end

  def update
    update!{videos_path}
  end
end
