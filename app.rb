# app.rb
require 'bundler'
require 'colorize'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'board'
require 'boardCase'
require 'game'
require 'player'
require 'show'

game = Game.new
game.start