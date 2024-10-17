require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'application'
require 'board'
require 'boardCase'
require 'game'
require 'player'
require 'show'

Application.new.perform