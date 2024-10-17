require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)

require 'board'
require 'boardCase'
require 'game'
require 'player'
require 'show'
require 'application'

Application.new