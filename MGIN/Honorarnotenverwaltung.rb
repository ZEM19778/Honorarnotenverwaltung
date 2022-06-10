#Array anlegen
honorarnoten = [[1, "Notarielle Beglaubigung", "1€"], [2, "Übersetzung", "50c"], [3, "Eidesstaatliche Erklärung", "1c"]]

#Benutzereingabe anfordern

eingabe = "x"
while eingabe != ""
  puts "Honorarnote abrufen[1], hinzufügen[2], bearbeiten[3] oder löschen[4]? "
  eingabe = gets.chomp!

  #Überprüfen
  if Integer(eingabe) != 1 && Integer(eingabe) != 2 && Integer(eingabe) != 3 && Integer(eingabe) != 4
    puts "Ihre Eingabe ist ungültig"
  end
  if Integer(eingabe) == 1
    if honorarnoten.empty?
      puts "Es sind noch keine Honorarnoten eingetragen"
    else
      puts "Welche ID hat Ihre Honorarnote?: "
      eingabeID = Integer(gets.chomp!)
      puts honorarnoten[eingabeID]
    end
  end
  if Integer(eingabe) == 2
    puts "Welche ID soll Ihre Honorarnote haben?: "
    neuID = Integer(gets.chomp!)
    puts "Welche Leistung wurde erbracht?: "
    neuLeistung = gets.chomp!
    puts "Wie viel hat die Leistung gekostet?: "
    neuPreis = gets.chomp!
    i = honorarnoten.length
    honorarnoten[i] = [neuID,neuLeistung,neuPreis]
  end
  if Integer(eingabe) == 3

  end
  if Integer(eingabe) == 4

  end
end
