class Dancer < ActiveRecord::Base
has_many :performances

# def get_videos(dancer,partner,song)
# client = YouTubeIt::Client.new
# reply = client.videos_by(:query => "#{dancer} #{partner} #{song}")
# @url = reply.videos.first.player_url
# @video = client.video_by("#{@url}")
# @video_id = @url.match(/watch\?v=(.*?)(?:&feature|\Z)/)[1]
# end


end
