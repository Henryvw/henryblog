desc "This take is called by the Heroku cron add-on 
http://serverfault.com/questions/384063/how-can-i-avoid-heroku-stopping-my-dyno"
task :call_page => environment do
  uri = URI.parse('http://www.henryvanwagenberg.com')
  Net::HTTP.get(uri)
end
