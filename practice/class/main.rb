class Product
  attr_reader :id, :name, :price
  @@count = 30
  def initialize(product_params)
    @name = product_params[:name]
    @price = product_params[:price]
    @id = @@count += 1
  end
end

class Greengrocer
  attr_reader :products
  def initialize(product_params)
    @products = []
    register_product(product_params)
  end

  def register_product(product_params)
      product_params.each do |param|
        @products << Product.new(param)
      end
  end

  def disp_products
    puts "いらっしゃいませ！商品を選んでください。"
    @products.each.with_index do |product|
      puts "#{product.id}. #{product.name} #{product.price}円"
    end
  end

  def ask_quantity(chosen_product)
    puts "#{chosen_product.name}ですね。何個買いますか？"
  end

  def calculate_chages(user)
    total_price = user.chosen_product.price * user.quantity_of_product
    if user.quantity_of_product >= 5
      puts "５個以上なので10％割引となります！"
      total_price *= 0.9
    end
    puts "合計金額は#{total_price.floor}円です。"
    puts "お買い上げありがとうございました。"
  end
end

class User
  attr_reader :chosen_product, :quantity_of_product
  def choose_product(products)
    while true
      print "商品の番号を選択 > "
      select_product_num = gets.to_i
      @chosen_product = products.find{|product| product.id == select_product_num}
      break if !@chosen_product.nil?
      puts "#{products.first.id}から#{products.last.id}の番号から選んでください。"
    end
  end

  def decide_quantity
    while true
      print "個数を入力 > "
      @quantity_of_product = gets.to_i
      break if @quantity_of_product >= 1
      puts "1個以上選んでください。"
    end
  end
end


product_params1 =[
  {name:"トマト", price: 100},
  {name:"きゅうり", price: 200},
  {name:"玉ねぎ", price: 300},
  {name:"なす", price: 400}
]

# product_params2 = [
#   {name:"パセリ", price:100},
#   {name:"ブロッコリー", price:150}
# ]

greengrocer1 = Greengrocer.new(product_params1)
# greengrocer2 = Greengrocer.new(product_params2)

adding_products1 =[
  {name: "ゴボウ", price: 250},
  {name: "レンコン", price:350}
]

greengrocer1.register_product(adding_products1)

user = User.new

greengrocer1.disp_products
# greengrocer2.disp_products

user.choose_product(greengrocer1.products)

greengrocer1.ask_quantity(user.chosen_product)

user.decide_quantity

greengrocer1.calculate_chages(user)
