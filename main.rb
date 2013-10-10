require 'pry'
require 'pg'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/activerecord'

set :database, {adapter: 'postgresql', 
				database: 'ga-class-posts', 
				host: 'localhost'}

class Post < ActiveRecord::Base
end

get '/' do
	# @posts = query("SELECT * FROM posts")
	@posts = Post.all
	binding.pry
	erb :post_index
end