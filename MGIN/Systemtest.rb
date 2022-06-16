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
      puts "An welcher Stelle der Liste steht die Honorarnote?: "
      eingabeID = Integer(gets.chomp!)-1
      puts honorarnoten[eingabeID]
    end
  end
  #Honorarnote hinzufügen
  #Damit das ID-System Sinn macht, einfach 4 nehmen bei der ersten Honorarnote, die man hinzufügt, 5 bei der nächsten, usw.
  if Integer(eingabe) == 2
    puts "Welche ID soll Ihre Honorarnote haben?: "
    neuID = Integer(gets.chomp!)
    puts "Welche Leistung wurde erbracht?: "
    neuLeistung = gets.chomp!
    puts "Wie viel hat die Leistung gekostet?: "
    neuPreis = gets.chomp!
    puts "Wie lange hat die Leistung gedauert?: "
    neuDauer = gets.chomp!
    i = honorarnoten.length
    honorarnoten[i] = [neuID,neuLeistung,neuPreis,neuDauer]
  end
  #Honorarnote wird bearbeitet
  if Integer(eingabe) == 3
    puts "Welche Honorarnote soll bearbeitet werden?"
    i = Integer(gets.chomp!)
    puts "Was wollen Sie ändern [ID, Leistung, Preis, Dauer, Alles]?"
    inputChange = gets.chomp!
    if inputChange == "ID"
      puts "Worauf soll die ID geändert werden? "
      changeID = Integer(gets.chomp!)
      honorarnoten[i-1][0] = changeID
    end
    if inputChange == "Leistung"
      puts "Worauf soll die Leistung geändert werden? "
      changeLeistung = gets.chomp!
      honorarnoten[i-1][1] = changeLeistung
    end
    if inputChange == "Preis"
      puts "Worauf soll der Preis geändert werden? "
      changePreis = gets.chomp!
      honorarnoten[i-1][2] = changePreis  
    end
    if inputChange == "Dauer"
      puts "Worauf soll die Dauer geändert werden? "
      changeDauer = gets.chomp!
      honorarnoten[i-1][3] = changeDauer
    end
    if inputChange == "Alles"
      puts "Worauf soll die ID geändert werden? "
      changeID = Integer(gets.chomp!)
      honorarnoten[i-1][0] = changeID
      puts "Worauf soll die Leistung geändert werden? "
      changeLeistung = gets.chomp!
      honorarnoten[i-1][1] = changeLeistung
      puts "Worauf soll der Preis geändert werden? "
      changePreis = gets.chomp!
      honorarnoten[i-1][2] = changePreis
      puts "Worauf soll die Dauer geändert werden? "
      changeDauer = gets.chomp!
      honorarnoten[i-1][3] = changeDauer
    end
  end
  #Eine Honorarnote löschen
  if Integer(eingabe) == 4
    puts "An welcher Stelle der Liste steht die Honorarnote, die gelöscht werden soll? "
    deleteID = Integer(gets.chomp!) - 1
    honorarnoten.delete_at(deleteID)
    puts "Die Honorarnote wurde gelöscht"
  end
end
