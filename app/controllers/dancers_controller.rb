class DancersController < ApplicationController

  def index
  @dancers = Dancer.all.order(full_name: :asc)
  end

  def get_videos(dancer,partner,song)
  client = YouTubeIt::Client.new
  reply = client.videos_by(:query => "#{dancer} #{partner} #{song}")
  @url = reply.videos.first.player_url
  @video_id = @url.match(/watch\?v=(.*?)(?:&feature|\Z)/)[1]
  @video = client.video_by("#{@video_id}")
  end

  def show
  id = params[:id].to_i
  @dances = Performance.where({dancer_id: id})
  @dance_videos = @dances.each do |dance|
  get_videos(dance.name,dance.partner,dance.song)
  dance.url = @url
  dance.video_id = @url.match(/watch\?v=(.*?)(?:&feature|\Z)/)[1]
  end
  end



end
