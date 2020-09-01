class SearchController < ApplicationController
  def index


    conn = Faraday.new(url: 'https://www.potterapi.com/v1/') do |faraday|
      faraday.headers["X-API-KEY"] = '<API KEY>'
    end

    response = conn.get("/characters.json")
  end
end
