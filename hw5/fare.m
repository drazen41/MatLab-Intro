function price=fare(distance,age)
  price = 2;
  roundDistance = round(distance)
  if roundDistance > 1 && roundDistance <= 10
    price = price + (roundDistance-1)*0.25;
  elseif roundDistance > 10
    price = price + 9*0.25 + (roundDistance-10)*0.10;
  end
  if age <= 18 || age >= 60
    price = price - price * 0.2;
  end
  
  