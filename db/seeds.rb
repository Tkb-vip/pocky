# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ClubName.delete_all
ClubName.connection.execute("delete from sqlite_sequence where name='club_names'")
ClubName.create(name: "野球部", sort: 1)
ClubName.create(name: "バレーボール部", sort: 2)
ClubName.create(name: "男子バスケットボール部", sort: 3)
ClubName.create(name: "女子バスケットボール部", sort: 4)
ClubName.create(name: "卓球部", sort: 5)
ClubName.create(name: "女子ソフトテニス部", sort: 6)
ClubName.create(name: "陸上競技部", sort: 7)
ClubName.create(name: "バトミントン部", sort: 8)
ClubName.create(name: "ソフトボール部", sort: 9)
ClubName.create(name: "剣道部", sort: 10)
ClubName.create(name: "弓道部", sort: 11)
ClubName.create(name: "サッカー部", sort: 12)
ClubName.create(name: "文芸部", sort: 13)
ClubName.create(name: "美術部", sort: 14)
ClubName.create(name: "写真部", sort: 15)
ClubName.create(name: "茶道部", sort: 16)
ClubName.create(name: "華道部", sort: 17)
ClubName.create(name: "吹奏楽部", sort: 18)
ClubName.create(name: "経済調査部", sort: 19)
ClubName.create(name: "珠算部", sort: 20)
ClubName.create(name: "ワープロ・コンピューターコンピュータ部", sort: 21)
ClubName.create(name: "放送部", sort: 22)
ClubName.create(name: "簿記部", sort: 23)
ClubName.create(name: "合唱同好会", sort: 24)
ClubName.create(name: "調理同好会", sort: 25)
ClubName.create(name: "ダンス同好会", sort: 26)

Place.delete_all
Place.connection.execute("delete from sqlite_sequence where name='places'")
Place.create(name: "体育館下 入り口前",place_image: "WIN_20201012_11_39_22_Pro.jpg", sort: 0)
Place.create(name: "体育館下 卓球場前南側",place_image: "WIN_20201012_11_40_23_Pro.jpg", sort: 0)
Place.create(name: "体育館下 剣道場前",place_image: "WIN_20201012_11_40_17_Pro.jpg", sort: 0)
Place.create(name: "体育館 ギャラリー西側",place_image: "WIN_20201012_11_23_39_Pro.jpg", sort: 0)
Place.create(name: "体育館 ギャラリー東側",place_image: "WIN_20201012_11_23_34_Pro.jpg" ,sort: 0)
Place.create(name: "部室前 北側	",place_image: "WIN_20201012_11_44_38_Pro.jpg", sort: 0)
Place.create(name: "部室前 南側",place_image: "WIN_20201012_11_44_47_Pro.jpg" ,sort: 0)
Place.create(name: "グラウンド 野球場",place_image: "WIN_20201012_11_35_39_Pro.jpg", sort: 0)
Place.create(name: "グラウンド 陸上トラック",place_image: "WIN_20201012_11_35_41_Pro.jpg", sort: 0)
Place.create(name: "体育館 北側１",place_image:"WIN_20201012_11_23_56_Pro.jpg" ,sort: 0)
Place.create(name: "体育館 北側２",place_image: "WIN_20201012_11_24_19_Pro.jpg", sort: 0)
Place.create(name: "体育館 南側１",place_image: "WIN_20201012_11_25_45_Pro.jpg" ,sort: 0)
Place.create(name: "体育館 南側２",place_image: "WIN_20201012_11_26_25_Pro.jpg",sort: 0)
Place.create(name: "テニスコート",place_image: "WIN_20201012_11_43_47_Pro.jpg" ,sort: 0)
Place.create(name: "野球部室内練習場",place_image: "WIN_20201012_11_41_31_Pro.jpg", sort: 0)
Place.create(name: "グラウンド ソフトボール場",place_image: "WIN_20201012_11_36_16_Pro.jpg" ,sort: 0)
Place.create(name: "ソフトボール部室内練習場",place_image: "WIN_20201012_11_42_08_Pro.jpg", sort: 0)
Place.create(name: "剣道場",place_image: "WIN_20201012_11_41_36_Pro.jpg", sort: 0)
Place.create(name: "卓球場",place_image: "WIN_20201012_11_40_51_Pro.jpg", sort: 0)
Place.create(name: "ウエイトルーム",place_image: "WIN_20201012_11_39_50_Pro.jpg" ,sort: 0)
Place.create(name: "グラウンド サッカー場",place_image: "WIN_20201012_11_34_52_Pro.jpg" ,sort: 0)
Place.create(name: "音楽室",place_image: "WIN_20201012_11_18_55_Pro.jpg" ,sort: 0)
Place.create(name: "第１PC室", place_image: "WIN_20201009_15_12_50_Pro.jpg",sort: 0)
Place.create(name: "第２PC室",place_image: "WIN_20201009_15_11_30_Pro.jpg" ,sort: 0)
Place.create(name: "第３PC室",place_image: "WIN_20201009_15_03_26_Pro.jpg", sort: 0)
Place.create(name: "デバッグ室",place_image: "WIN_20201009_15_03_52_Pro.jpg", sort: 0)
Place.create(name: "１年教室",place_image: "WIN_20201009_15_06_37_Pro.jpg", sort: 0)
Place.create(name: "２年教室",place_image: "WIN_20201009_15_05_32_Pro.jpg", sort: 0)
Place.create(name: "３年教室",place_image: "WIN_20201009_15_05_54_Pro.jpg", sort: 0)
Place.create(name: "体育館 階段",place_image: "", sort: 0)
Place.create(name: "体育館２階スロープ入り口",place_image:"WIN_20201012_11_28_18_Pro.jpg",sort:0)
Place.create(name: "第１演習室",place_image: "WIN_20201009_15_08_05_Pro.jpg", sort: 0)
Place.create(name: "第２演習室",place_image: "WIN_20201009_15_07_38_Pro.jpg", sort: 0)
Place.create(name: "第３演習室",place_image: "WIN_20201009_15_07_49_Pro.jpg", sort: 0)
Place.create(name: "第４演習室",place_image: "", sort: 0)
Place.create(name: "第５演習室",place_image: "WIN_20201009_15_14_41_Pro.jpg", sort: 0)
Place.create(name: "第６演習室",place_image: "WIN_20201009_15_14_27_Pro.jpg", sort: 0)
Place.create(name: "総合実践室",place_image: "WIN_20201009_15_12_04_Pro.jpg", sort: 0)
Place.create(name: "作法室",place_image:"WIN_20201009_15_10_22_Pro.jpg", sort: 0)
Place.create(name: "洋室",place_image: "WIN_20201009_15_09_49_Pro.jpg", sort: 0)
Place.create(name: "美術室",place_image:"WIN_20201009_15_11_24_Pro.jpg",sort: 0)
Place.create(name: "家庭経営保育室",place_image: "WIN_20201009_15_09_31_Pro.jpg", sort: 0)
Place.create(name: "書道教室",place_image: "", sort: 0)
Place.create(name: "視聴覚室",place_image:"WIN_20201012_11_17_27_Pro.jpg", sort: 0)
Place.create(name: "放送室",place_image: "WIN_20201012_11_17_08_Pro.jpg", sort: 0)
Place.create(name: "被服実習室",place_image: "WIN_20201009_15_08_46_Pro.jpg", sort: 0)
Place.create(name: "弓道場",place_image: "WIN_20201012_11_45_15_Pro.jpg", sort: 0)
Place.create(name: "脩成館",place_image: "WIN_20201012_11_46_05_Pro.jpg", sort: 0)
Place.create(name: "図書室",place_image: "WIN_20201012_11_16_29_Pro.jpg", sort: 0)
Place.create(name: "調理実習室",place_image:"WIN_20201009_15_08_53_Pro.jpg", sort: 0)
Place.create(name: "昇降口",place_image:"WIN_20201012_11_31_12_Pro.jpg", sort: 0)
Place.create(name: "その他",place_image:"", sort: 0)
Place.create(name: "地歴公民教室",place_image:"WIN_20201009_15_14_16_Pro.jpg", sort: 0)


User.delete_all
User.connection.execute("delete from sqlite_sequence where name='users'")
User.create(username: "baseball",password:"baseball",club_name_id:1, teacher:false,admin:false )
User.create(username: "baseballteacher",password:"baseballteacher",club_name_id:1, teacher:true,admin:false )
User.create(username: "soccer",password:"soccer",club_name_id:2, teacher:false,admin:false )
User.create(username: "soccerteacher",password:"soccerteacher",club_name_id:2, teacher:true,admin:false )
User.create(username: "admin",password:"admin",club_name_id:0, teacher:true,admin:true )
