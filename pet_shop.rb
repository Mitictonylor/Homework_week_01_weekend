def pet_shop_name(shop_name)
return shop_name[:name]
end

def total_cash(cash)
  money_total= 0
for element in cash
  money_total += element[:total_cash]
end
end
