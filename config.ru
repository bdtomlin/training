require 'rubygems'
require 'rack'
require 'sinatra'
require 'web_app'


use Rack::Reloader

run Sinatra::Application
