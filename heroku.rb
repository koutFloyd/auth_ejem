

puts "running comandos gitHub..."
puts "1.- running command git add ."
system("git add .")
puts "2.- running command git commit -m 'commit message'"
system("git commit -m 'commit message'")
puts "3.- running command git push origin master"
system("git push origin master")

puts "running comandos DataBase..."
#system("db:migrate")
system("bundle install")

#pendiente
#production:
#  <<: *default
#  database: my_db_production
#  username: my_db
#  password: <%= ENV['MYAPP_DATABASE_PASSWORD']%>



puts "running comandos hiroku..."
puts "4.- running command heroku login"
system("heroku login")
system("horoku create")
puts "5.- running command git push heroku master"
system("git push heroku master")
puts "6.- running command heroku run rake db:migrate"
system("heroku run rake db:migrate")