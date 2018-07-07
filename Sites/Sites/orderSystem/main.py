from food import Food
from drink import Drink

food1 = Food('担々麺', 400, 330)
food2 = Food('まぜそば', 400, 450)

foods = [food1, food2]

drink1 = Drink('烏龍茶', 100, 350)
drink2 = Drink('コカコーラ', 100, 350)
drink3 = Drink('カルピス', 100, 350)

drinks = [drink1, drink2, drink3]

print('食べ物メニュー')
index = 0
for food in foods:
    print(str(index) + '. ' + food.info())
    index += 1

print('飲み物メニュー')
index = 0
for drink in drinks:
    print(str(index) + '. ' + drink.info())
    index += 1

print('--------------------')
order = int(input('食べ物の番号を選択してください: '))
selected_food = foods[order]
count1 = int(input('いくつ買いますか？: '))

order = int(input('飲み物の番号を選択してください: '))
selected_drink = drinks[order]
count2 = int(input('いくつ買いますか？: '))

result = selected_food.get_total_price(count1) + selected_drink.get_total_price(count2)


print('合計は' + str(result) + '円です。お買い上げいただきありがとうございます。')
