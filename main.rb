require 'pry'
require 'sinatra'
require 'pg'
require 'sinatra/reloader' if development?
require 'sinatra/activerecord/rake'

class Post < ActiveRecord::Base

end

get '/' do
	# @posts = query("SELECT * FROM posts")
	@posts = Post.all
	erb :post_index
end