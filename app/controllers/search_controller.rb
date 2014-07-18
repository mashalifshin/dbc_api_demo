class SearchController < ApplicationController
  def index
  end
  
  def results
    @query = params[:query]
    soundcloud = SoundcloudSearcher.new
    @response = soundcloud.hottest_tracks(@query)
    if @response[:error].nil?
      @tracks = @response[:tracks]
    else
      redirect_to :root, alert: "There was a problem with the search.  Ask again later."
    end
  end

end
