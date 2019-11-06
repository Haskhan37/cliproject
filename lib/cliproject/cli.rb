class Web_dev::CLI

  def call
    list_jobs
    menu
    goodbye
  end

  def list_jobs
    puts "Todays Web Dev Job Listings:"
    @jobs = Web_dev::Job.today
    @jobs.each.with.index(1) do |job, i|
      puts "{i}. #{job.title}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Please select the job listing you'd like more info on, or type list to see jobs again, or type exit"
      input = gets.strip.downcase

      if input.to_i > 0
        the_job = @jobs[input.to_i-1]
        puts "#{the_job.tite}"
      elseif input == "list"
      list_jobs
    else
      puts "Unsure of your selection, type list or exit"
    end
  end
end

  def goodbye
  puts "Check back tomorrow for more job listings"
end
end 
