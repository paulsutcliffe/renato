class Video < ActiveRecord::Base

  validates :link, :presence => true

  auto_html_for :link do
    html_escape
    image
    youtube(:width => 400, :height => 250)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
end
