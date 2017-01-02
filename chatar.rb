# kacet stromy, stipat polena, spat, vzdat se
# klady, polena


puts "Stal si se chatařem v roce blabla"

polena = [3,1]                                  # 0 je poleno 1 je den

#day = 1

klady = 0




loop do

  puts "\nproved akci\n1 - jit do lesa kacet\n2 - stipat klady na polena\n3 - jit spat\n4 - ukoncit simulaci"
  puts "Mas #{polena[0]} polen a #{klady} klad"
  vstup = gets.to_i

  def pol(polena)                               # primarni fce odecitani polena (index 0) a pricitani dne simulace (index 1)
    polena[0] -= 1
    polena[1] += 1

    if polena[0] == 0                          # no way - když spálíš poslední poleno není jíné východisko
    puts "Simulace skončila."
    exit()
    end

    return polena

  end

  def stipani(poklady)                           # nahodny pocet klad nastipano, kdyz nahodny pocet je vyssi nez skladove mnozstvi, je narezano vse ve skladu jen,
    nah = Random.new.rand(2..5)                  # testova vychozi hodnota poklady nahrazena pri spusteni promenou klady - fce vraci pocet klad k narezani na polena

    if poklady > nah
      return nah
    else
      return poklady
    end
  end

 # def klad(klady)


  case vstup
    when 1
      polena = pol(polena)
      vap = Random.new.rand(2..4)                  # nahodne cislo n pokacenych stromu a klad
      klady += vap
#      day += 1
      puts "#{polena[1]}.den jsi sel do lesa a podarilo se ti pokacet #{vap} klad a mas z nich #{vap} klad."

    when 2

      if klady > 0
        polena = pol(polena)

        kladynum = stipani(klady)                # vypocet klad k nastipani -> ulozeni do promenne kladynum

        klady -= kladynum
        polena[0] += kladynum*2



 #     if klady > 0
 #      klady -= 1
 #       polena[0] += 3
#        day += 1
        puts "#{polena[1]}.den jsi nastipal #{kladynum} klady a ziskal jsi #{kladynum*2}polena."
      else
        puts "Nemáš žádnou kládu. Zvol novou akci."
      end
    when 3
      polena = pol(polena)
#      day += 1
      puts "#{polena[1]}.den jsi spal. Doufám že to stálo za to."
    else
      puts "Špatně zadaná akce. Zadejte akci prosím."
  end



end
