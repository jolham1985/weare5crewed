class EngineersController < ApplicationController

  def index
    @engineers = Engineer.where.not(latitude: nil, longitude: nil)

    @markers = Gmaps4rails.build_markers(@engineers) do |engineer, marker|
      marker.lat engineer.latitude
      marker.lng engineer.longitude
      # marker.infowindow render_to_string(partial: "/engineers/map_box", locals: { engineer: engineer })
    end
  end
end
