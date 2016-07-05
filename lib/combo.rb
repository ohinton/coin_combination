class String
  define_method(:combo) do
    coins = []
    total = self.to_i()
    quarters_left = 2
    dimes_left=2
    nickels_left=4
    number_of_quarters = 0
    number_of_dimes = 0
    number_of_nickels = 0

    until total < 25 || quarters_left == 0
      number_of_quarters+=1
      total -= 25
      quarters_left-=1
    end
    coins.push("#{number_of_quarters} quarters") if number_of_quarters !=0

    until total < 10 || dimes_left == 0
      number_of_dimes+=1
      total-=10
      dimes_left-=1
    end
    coins.push("#{number_of_dimes} dimes") if number_of_dimes !=0

    until total < 5 || nickels_left == 0
      number_of_nickels+=1
      total-=5
      nickels_left-=1
    end
    coins.push("#{number_of_nickels} nickels") if number_of_nickels!=0

    until total < 1
      number_of_pennies = total/1
      total-=number_of_pennies*1
      coins.push("#{number_of_pennies} pennies")
    end

    coins.join(' ')
  end
end
