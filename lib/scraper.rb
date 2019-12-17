require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    index_page = Nokogiri::HTML(open(index_url))
    #name 
    #location 
    # profile url
    # div.roster-cards-container
    index_page.css("div.roster-cards-container").each do |card|
      card.css:(".stidemt=card a") each do |student| 
        name = student.css(".student-name").text 
        location = student.css(".student-location").text 
      #binding pry
      end
    end 
  end
  
  def self.scrape_profile_page(profile_url)
    
  end
  
end


