def pet_shop_name(shop_name)
return shop_name[:name]
end

def total_cash(who_got_the_money)
  return who_got_the_money[:admin][:total_cash]
end

def add_or_remove_cash(shop,cash_amount)
shop[:admin][:total_cash] += cash_amount
return shop[:admin][:total_cash]
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

  def increase_pets_sold(shop,amount)
  shop[:admin][:pets_sold] += amount
  return shop[:admin][:pets_sold]
  end

  def stock_count(count)
    return count[:pets].count
  end

def pets_by_breed(shop,race)
  same_breed_list=[]

  for pet in shop[:pets]
      if pet[:breed] == race
      same_breed_list.push(pet)
      end
  end
return same_breed_list
end

def find_pet_by_name(shop, name)
  for pet in shop[:pets]
      if pet[:name] == name
      return pet
      else
      end
  end
  return nil
end


def remove_pet_by_name(shop,name)

  for pet in shop[:pets]
      if pet[:name] == name
      pet.delete(:name)
      end
  end
end

def add_pet_to_stock(pet, name)
  pet[:pets].push(name)
  return pet[:pets].length
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer,cash_removed)
customer[:cash] -= cash_removed
return customer[:cash]
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
  return customer[:pets].length
end


def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    true
  else
    false
  end
end
 
 def sell_pet_to_customer(pet_shop,pet,customer)
  if pet != nil && customer_can_afford_pet(customer, pet)
      add_pet_to_customer(customer, pet)

       # the number of pets sold by the shop increases by 1
       remove_pet_to_stock(pet_shop, pet)
       increase_pets_sold(pet_shop, 1)

       # the amount of cash in the shop goes up by the price of the pet
       add_or_remove_cash(pet_shop, pet[:price])
   end
 end

# def sell_pet_to_customer(@pet_shop,"Sir Percy", "Alice" )
# if "Sir Percy" != nil && customer_can_afford_pet("Alice", "Sir Percy")
#   add_pet_to_customer("Alice","Sir Percy")
#   remove_pet_to_stock("Alice","Sir Percy")
#   increase_pets_sold(@pet_shop,1)
#   add_or_remove_cash(@pet_shop, "Sir Percy"[:price])
# end
# end
