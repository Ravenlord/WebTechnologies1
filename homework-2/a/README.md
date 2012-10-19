# Zählen mit Hash

In „Try Ruby” kommt folgendender Code vor, was passiert hier genau? 

``ruby
books = Hash.new
no_of_ratings = Hash.new(0)
books["Gravity's Rainbow"] = :splendid
books["The Hobbit"] = :splendid
books["Professionelle Webentwicklung mit Ruby on Rails 2"] = :outdated
books.values.each { |rate| no_of_ratings[rate] += 1 }
puts books
puts no_of_ratings
``

Verwende diesen Pattern um im log file des wikis die Anzahl der Zugriffe von verschiedenen IP-Adressen zu zählen. Gibt eine Liste aller IP-Adressen und der jeweiligen Anzahl der Zugriffe aus. 

Bonus-Level: gibt eine Hitliste der 10 IP-Adressen mit den meisten Zugriffen aus