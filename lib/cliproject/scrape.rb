class Scrape

  def self.today
    #scrape craiglist for jobs then return posted listings
    self.scrape_craigslist
  end



  def self.scrape_craigslist
    doc = Nokogiri::HTML(open('https://newyork.craigslist.org/search/ggg?query=developer&is_paid=all'))

    links = doc.css('.content').css('a').css('.hdrlnk')
    links.each do |lnk|


    job = Job.new
    job.title = lnk.text
    job.url = lnk.attribute('href').value

end
end
end
