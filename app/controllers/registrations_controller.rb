class RegistrationsController < Devise::RegistrationsController
  def new
    if current_admin
      super
    else
      redirect_to root_path
    end
  end

  def create
    # add custom create logic here
  end

  def update
    super
  end
end

