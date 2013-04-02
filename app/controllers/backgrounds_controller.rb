class BackgroundsController < InheritedResources::Base
  belongs_to :fondo_seccion, :finder => :find_by_slug!


  def create
    create!{ fondo_secciones_path }
  end

  def update
    update!{ fondo_secciones_path }
  end

  def destroy
    destroy!{ fondo_secciones_path }
  end
end
