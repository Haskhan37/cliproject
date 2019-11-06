class Web_dev::Job
  attr_accessor :title,

  def self.today
    #scrape craiglist for jobs then return posted listings
    self.scrape_jobs
  end

  def self.scrape_jobs
    jobs = []

    jobs << self.scrape_craigslist

    jobs
  end

  def self.scrape_craigslist
    doc = Nokogiri::HTML(open('https://newyork.craiglist.org/search/ggg?query=developer&is_paid=all'))


    job = self.new
    job.links = doc.css('.content').css('a').css('.hdrlnk')
    links.each do |lnk|
      puts lnk.inner_html
end
end
