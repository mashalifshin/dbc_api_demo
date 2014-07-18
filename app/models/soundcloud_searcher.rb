class SoundcloudSearcher
  
  # http://soundcloud.com/you/apps/new
  def initialize
    @client = Soundcloud.new(:client_id => '0422ddd3f2402f07a616f71bc16cdca6')
  end

  def hottest_tracks(query)
    @response = {}
    begin
      @response[:tracks] = @client.get('/tracks', :q => query, :limit => 10, :order => 'hotness')
    rescue Soundcloud::ResponseError => e
      binding.pry
      @response[:error] = "Error: #{e.message}, Status Code: #{e.response.code}"
    end
    @response
  end
  
end
