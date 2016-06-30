class String
  define_method(:combo) do
    coins = []
    total = self.to_i()
    until total < 25
      number_of_quarters = total/25
      total-=number_of_quarters*25
      coins.push("#{number_of_quarters} quarters")
    end
    until total < 10
      number_of_dimes = total/10
      total-=number_of_dimes*10
      coins.push("#{number_of_dimes} dimes")
    end
    until total < 5
      number_of_nickels = total/5
      total-=number_of_nickels*5
      coins.push("#{number_of_nickels} nickels")
    end
    until total < 1
      number_of_pennies = total/1
      total-=number_of_pennies*1
      coins.push("#{number_of_pennies} pennies")
    end
    coins.join(' ')
  end
end
