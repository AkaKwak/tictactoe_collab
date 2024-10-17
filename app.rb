require 'bundler'
Bundler.require

$:.unshift File.expandpath("./../lib", _FILE)
require 'board'
require 'boardCase'
require 'game'
require 'player'
require 'show'
require 'application'

Application.new.perform