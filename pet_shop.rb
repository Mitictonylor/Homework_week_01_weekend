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

def pets_sold()
end
