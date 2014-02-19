require 'open-uri'

class WinosController < ApplicationController
	def index
	products_json = open('http://lcboapi.com/products').read #ENORMOUS string without structure
	@products = JSON.parse(products_json) #Takes JSON objects and turns into arrays/hashes

	end
end
