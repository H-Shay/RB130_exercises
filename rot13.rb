def unrot_13(string)
  return_string = ''

  string.chars.each do |char|
    if char == ' '
      return_string << ' '
      next 
    end
    return_string << (((char.downcase.ord - 97)-13)%26) + 97
  end

  return_string.split.each {|word| word.capitalize!}.join(' ') 
end 

def decrypt(*list)
  list.join.split("\n").each {|name| puts unrot_13(name)}
end

list = "Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu"

decrypt(list)

