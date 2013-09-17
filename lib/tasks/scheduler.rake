desc "This take is called by the Heroku cron add-on /n
http://serverfault.com/questions/384063/how-can-i-avoid-heroku-stopping-my-dyno /n
docs http://devcenter.heroku.com/articles/scheduler /n"
task :call_page => :environment do
  uri = URI.parse('http://www.henryvanwagenberg.com/')
  Net::HTTP.get(uri)
  puts "GOT #{uri}"
end
