class BackgroundsController < InheritedResources::Base
  belongs_to :fondo_seccion, :finder => :find_by_slug!
end
