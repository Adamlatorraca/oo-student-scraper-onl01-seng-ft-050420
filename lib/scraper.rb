require 'open-uri'
require 'pry'

class Scraper

=begin  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(https://learn-co-curriculum.github.io/student-scraper-test-page/index.html)
    students {}
    doc.css("div.roster-body-wrapper").each do |student|
      student = student.css("div.roster-cards-container").text
      students[student] = {
        :name => student.css("h4.studen-name").text
        :location => student.css("p.student-location").text
        :profile_url => student.css("a").attribute("href").text
      }
    end
    students
  end
=end

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    
  end

  def self.scrape_profile_page(profile_url)

  end

end
