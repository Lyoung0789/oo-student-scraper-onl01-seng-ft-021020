require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper
  
  
  
  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    @all = []
    # doc.css("div.student-card")
    
    doc.css("div.student-card").each do |index|
      
      student = {}
      student[:name] = index.css("h4.student-name").text
      student[:location] = index.css("p.student-location").text
      student[:profile_url] = index.css("a").attribute("href").value
      @all << student
      binding.pry
      
    end 
    binding.pry
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

