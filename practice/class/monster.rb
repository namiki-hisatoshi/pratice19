class Product
  attr_reader :id, :name, :price
  @@count = 0
  def initialize(product_params)
    @id = @@count += 1
    @name = product_params[:name]
    @price = product_params[:price]
  end
end

class Greengrocer
  attr_reader :products
  def initialize(product_params)
    @products = []
    product_params.each do |param|
      @products << Product.new(param)
    end
  end

  def disp_products
    puts "いらっしゃいませ！商品を選んでください。"
    products.each do |product|
      puts "#{product.id}. #{product.name} (#{product.price}円)"
    end
  end

  def ask_quantity(chosen_product)
    puts "#{chosen_product.name}ですね。何個買いますか？"
  end

  def calculate_chages(user)
    total_price = user.chosen_product.price * user.quantity_of_product
    if user.quantity_of_product >= 5
      puts "５個以上なので10%割引となります！"
      total_price *= 0.9
    end
    puts "合計金額は#{total_price.floor}円です。"
    puts "お買い上げありがとうございました！"
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
      puts "#{products.first.id}から#{products.last.id}の番号で選択して下さい。"
      end
  end

  def decide_quantity(products)
    while true
      print "個数を入力 > "
      @quantity_of_product = gets.to_i
      break if(@quantity_of_product >= 1)
      puts "１以上で選んでください。"
    end
  end
end


product_params = [
  {name:"トマト", price: 100},
  {name:"きゅうり", price: 200},
  {name:"白菜", price: 300},
  {name:"なす", price: 400}
]

greengrocer = Greengrocer.new(product_params)

user = User.new

greengrocer.disp_products

user.choose_product(greengrocer.products)

greengrocer.ask_quantity(user.chosen_product)

user.decide_quantity(greengrocer.products)

greengrocer.calculate_chages(user)
