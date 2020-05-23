require 'open-uri'
require 'pry'

class Scraper

=begin  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(https://learn-co-curriculum.github.io/student-scraper-test-page/index.html)
    binding.pry
    students {}
    doc.css("div.roster-cards-container").each do |student|
      student = student.css(""div.roster-cards-container"").text
      students = {
        :name => student.css("h4.studen-name").text
        :location => student.css("p.student-location").text
        :profile_url => student.css("a").attribute("href").text
      }
    end
    students
  end
=end

def self.scrape_index_page(index_url)
    students = []
    html = open(index_url)
    index = Nokogiri::HTML(html)
    index.css("div.student-card").each do |student|
      student_details = {}
      student_details[:name] = student.css("h4.student-name").text
      student_details[:location] = student.css("p.student-location").text
      profile_path = student.css("a").attribute("href").text
      student_details[:profile_url] = './fixtures/student-site/' + profile_path
      students << student_details
    end
    students
  end

  def self.scrape_profile_page(profile_url)

  end

end
