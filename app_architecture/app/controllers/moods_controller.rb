class MoodsController < ApplicationController

  def index
    @moods = Mood.where.not(user_id: "#{User.find_by(email: session[:spotify_user]["email"]).id}")
  end

  def show
    @mood = Mood.find_by(id: params[:id])
    @comments = Mood.find_by(id: params[:id]).comments
  end

  def create
    #add mood to db
    mood = params['mood']
    Mood.create(content: mood['content'],
                 title: mood['title'],
                 created_at: Time.now,
                 updated_at: Time.now,
                 user_id: mood['user_id'])
  end

  def update
    mood = params['mood']
    Mood.create(content: mood['content'],
                 title: mood['title'],
                 created_at: Time.now,
                 updated_at: Time.now,
                 user_id: mood['user_id'])
  end
  def delete

  end
end
