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

def pets_sold(shop)
    return shop[:admin][:pets_sold]
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
