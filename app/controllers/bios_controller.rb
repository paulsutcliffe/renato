class BiosController < InheritedResources::Base

  def index
    @bio = Bio.first
  end
end
