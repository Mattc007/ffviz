require 'rubygems'
require 'bundler'

Bundler.require

require './ffviz'
run Sinatra::Application
