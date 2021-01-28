# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  p names << "斎藤"
end

def q2
  array1 = ["dog", "cat", "fish"]
  array2 = ["bird", "bat", "tiger"]

  # 以下に回答を記載
  ## パターン1
  array =[]
  array.push(array1,array2)
  p array.flatten

  ##パターン2(配列の場合は、こちらが好ましい)
  p array = array1 +  array2
end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載
  p numbers.count(3)
end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載
  sports.compact!
  # 以下は変更しないで下さい
  p sports
end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
  p array1.empty?
  p array2.empty?

end

def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載
  p numbers2 = numbers1.map{|number| number*10}
end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
  # array.map!{|a| a.to_i }

  # 上記を「&とシンボル」を使って簡潔に。
    array.map!(&:to_i)
  # 以下は変更しないで下さい
  p array
end

def q8
  programming_languages = %w(ruby php python javascript)

  以下に回答を記載
  #  programming_languages.map!{|programming_language|
  #   programming_language.capitalize
  # }

  ##上記を「&とシンボル」を使って簡潔に。
  programming_languages.map!(&:capitalize)


  upper_case_programming_languages = programming_languages.map{|programming_language|
    programming_language.upcase
  }

  # 以下は変更しないで下さい
  p programming_languages
  p upper_case_programming_languages
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names.each.with_index(1) do |name, number|
    puts "会員No.#{number} #{name}さん"
  end
end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
    foods.each{|food|
    if food.include?("うに")
      puts "好物です"
    else
      puts "まぁまぁ好きです"
    end
  }

end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載
  ##メソッドチェーンを利用
  sports.flatten!.uniq!
  sports.each.with_index(1){|sport,number|
    puts "No#{number} #{sport}"
  }
end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載
  p data[:user][:name]
end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載
  user_data.delete(:name)
  # user_data[:age] = update_data[:age]
  user_data.store(:age,update_data[:age])
  user_data.store(:address,update_data[:address])
  p user_data
end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載
  p data.keys
end


def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
  ##以下を三項演算子を用いて修正
  if data1.include?(:age)
    puts "OK"
  else
    puts "OK"
  end

  if data2.include?(:age)
    puts "OK"
  else
    puts "NG"
  end
  #以下だとエラー
  # data1.include?(:age) puts "OK" : puts "NG"
  # data2.include?(:age) puts "OK" : puts "NG"

end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載
  users.each do |hash|
    puts "私の名前は#{hash[:name]}です。年齢は#{hash[:age]}歳です。"
  end
end

class UserQ17
  # 以下に回答を記載
  def initialize(name,age,gender)
    @name = name
    @age = age
    @gender = gender
  end

  ##クラスの定義内であればインスタンス変数は使える。(外部で使用する為には、上のattr_accessorが必要)
  def info
    puts <<~TEXT
    名前:#{@name}
    年齢:#{@age}
    性別:#{@gender}
    TEXT
  end
end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new("神里", 32, "男")
  user2 = UserQ17.new("あじー", 32, "男")

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  # 以下に回答を記載
  def initialize(name,age)
    @name = name
    @age = age
  end

  def introduce
    if @age > 20
      puts "こんにちは，#{@name}と申します。宜しくお願いいたします。"
    else
      puts "はいさいまいど〜，#{@name}です！！！"
    end
  end
end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new("あじー", 32)
  user2 = UserQ18.new("ゆたぼん", 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

def q19
  # ここは変更しないで下さい
  book = Item.new("ゼロ秒思考")
  puts book.name
end

class UserQ20
  # 以下に回答を記載
  attr_accessor :name
  attr_accessor :age

  def initialize(name,age)
    @name = name
    @age = age
  end
end

class Zoo
  def initialize(infant,children,adult,senior)
    @infant = infant
    @children = children
    @adult = adult
    @senior = senior
  end
  # 以下に回答を記載
  def info_entry_fee(user)
    if user.age < 6
      puts "#{user.name}さんの入場料金は #{@infant}円です。"
    elsif user.age < 12
      puts "#{user.name}さんの入場料金は #{@children}円です。"
    elsif user.age < 65
      puts "#{user.name}さんの入場料金は #{@adult}円です。"
    elsif user.age < 120
      puts "#{user.name}さんの入場料金は #{@senior}円です。"
    end
  end
end

def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(0, 400, 800, 500)

  users = [
    UserQ20.new("たま", 3),
    UserQ20.new("ゆたぼん", 10),
    UserQ20.new("あじー", 32),
    UserQ20.new("ぎん", 108)
  ]

  users.each do |user|
    zoo.info_entry_fee(user)
  end
end