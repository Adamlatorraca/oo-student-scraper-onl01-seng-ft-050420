require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(https://learn-co-curriculum.github.io/student-scraper-test-page/index.html)
    students = {}
    binding.pry
    doc.css("div.roster-cards-container").each do |student|
      name = student.css("h4.student-name").text
    end
  end

  def self.scrape_profile_page(profile_url)

  end

end
