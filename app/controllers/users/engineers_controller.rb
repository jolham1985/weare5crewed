class EngineersController < ApplicationController

  def index
    @engineers = Engineer.where.not(latitude: nil, longitude: nil)

    @markers = Gmaps4rails.build_markers(@engineers) do |Engineer, marker|
      marker.lat Engineer.latitude
      marker.lng Engineer.longitude
      # marker.infowindow render_to_string(partial: "/engineers/map_box", locals: { engineer: engineer })
    end
  end
end
