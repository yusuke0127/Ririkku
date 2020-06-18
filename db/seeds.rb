# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Artist.destroy_all

puts "Creating artists..."
@lisa = { name: "LiSa" }
@kenshi = { name: "Kenshi Yonezu" }

[@lisa, @kenshi].each do |attributes|
  artist = Artist.create!(attributes)
  puts "Created #{artist.name}"
end


puts "Creating songs..."
gurenge = {
  en_title: "Gurenge",
  jp_title: "紅蓮華（ぐれんげ）",
  en_lyric: "Finally, you've given me
              A reason to be strong
              And we'll stand
              Hand in hand
              Till the end

              [Verse 1]
              As my body's shaking
              The future is out there waiting
              For me to grasp the light
              That's trembling just like my hand
              I gotta keep it safe from fading
              That's all i want

              The subtle scent of midnight
              I spent all thirty nights
              I glare up at the stars
              Staring into the sky
              The path i see before me
              I know only i can change it
              That's all that i need

              [Pre-Chorus]
              Finally, you've given me
              A reason to be strong
              And we'll stand
              Hand in hand
              Till the end


              [Chorus 1]
              Despite the
              Past mistakes we can't erase
              A future that we can't escape
              As long as I can always keep you safe
              I've gotta be strong
              So to your name
              I'll fight through the pain

              This world can
              Beat me down a hundred times
              But into the light I'll always rise
              A lotus flower so pure
              Right up to the end
              Until it blooms
              A bright red

              [Verse 2]
              I can hear the lightning
              There's not a song more frightening
              And like a storm you can't
              Control some things in this world
              Not everything can be protected
              I already know that

              Good and evil they will always want to intertwine
              Our true nature hiding beneath the surface
              Tell me why
              Tell me why
              Tell me why
              Tell me why
              I don't need you
              Like a wild flower growing tall
              There's beauty in the way you live
              And thrive despite it all",
  jp_lyric: "強くなれる理由を知った 僕を連れて進め
              泥だらけの走馬灯に酔う こわばる心
              震える手は掴みたいものがある それだけさ
              夜の匂いに (I smell out there at night) 空睨んでも (Staring up to the sky)
              変わっていけるのは自分自身だけ それだけさ


              強くなれる理由を知った 僕を連れて進め


              どうしたって！
              消せない夢も 止まれない今も
              誰かのために強くなれるなら
              ありがとう 悲しみよ
              世界に打ちのめされて負ける意味を知った
              紅蓮の華よ咲き誇れ！ 運命を照らして


              イナビカリの雑音が耳を刺す 戸惑う心
              優しいだけじゃ守れないものがある？ わかってるけど
              水面下で絡まる善悪 透けて見える偽善に天罰
              (Tell me why, tell me why, tell me why, tell me… I don’t need you!)
              逸材の花より 挑み続け咲いた一輪が美しい


              乱暴に敷き詰められた トゲだらけの道も
              本気の僕だけに現れるから 乗り越えてみせるよ
              簡単に片付けられた 守れなかった夢も
              紅蓮の心臓に根を生やし この血に宿ってる


              人知れず儚い 散りゆく結末
              無情に破れた 悲鳴の風吹く
              誰かの笑う影 誰かの泣き声
              誰もが幸せを願ってる


              どうしたって！
              消せない夢も 止まれない今も
              誰かのために強くなれるなら
              ありがとう 悲しみよ
              世界に打ちのめされて負ける意味を知った
              紅蓮の華よ咲き誇れ！ 運命を照らして",
  genre: "Anime Rock",
  composer: "Kayoko Kusano",
  release: Date.new(2019, 4)
}
lemon = {
  en_title: "Lemon",
  jp_title: "レモン（れもん）",
  en_lyric: "How good it would have been if this were all just a dream
              Even now, I still dream of you
              Like I’m going home to get something I’ve forgotten
              I dust off my old, worn memories


              The last thing you taught me
              Is that there are types of happiness that don’t come back
              The dark past I kept hidden and unsaid
              Would have remained forever dark, if I hadn’t met you


              I know there’s no possible way
              I could ever be hurt any more than this


              Even the sadness of those days, even the pain of those days
              I loved every bit of it, with you by my side
              In my heart, never coming out, is the bitter smell of lemon
              I can’t go home until the rain lets up
              And even now, you’re my light


              In the darkness, I traced your back
              I remember its outline vividly
              Each time I encounter something I can’t fully accept
              Nothing wells up but my tears


              What were you doing? What were you looking at?
              Your face turned to the side, expression unknown


              If you’re somewhere now, just the way I am
              Trapped in loneliness, suffering and crying
              Somehow, please, just forget about me
              I wish for it so strongly, with all my heart
              That even now, you’re my light


              Since then, when I think of you
              —Someone I loved
              More than I ever thought—
              My breath stops
              Even though you were by my side
              It’s almost like a lie
              But I’ll never forget it
              That’s the only thing I know for sure


              Even the sadness of those days, even the pain of those days
              I loved every bit of it, with you by my side
              In my heart, never coming out, is the bitter smell of lemon
              I can’t go home until the rain lets up
              Like one half of a split fruit
              Even now, you’re my light",
  jp_lyric: "夢ならばどれほどよかったでしょう
              未だにあなたのことを夢にみる
              忘れた物を取りに帰るように
              古びた思い出の埃を払う


              戻らない幸せがあることを
              最後にあなたが教えてくれた
              言えずに隠してた昏い過去も
              あなたがいなきゃ永遠に昏いまま


              きっともうこれ以上　傷つくことなど
              ありはしないとわかっている


              あの日の悲しみさえ　あの日の苦しみさえ
              そのすべてを愛してた　あなたとともに
              胸に残り離れない　苦いレモンの匂い
              雨が降り止むまでは帰れない
              今でもあなたはわたしの光


              暗闇であなたの背をなぞった
              その輪郭を鮮明に覚えている
              受け止めきれないものと出会うたび
              溢れてやまないのは涙だけ


              何をしていたの　何を見ていたの
              わたしの知らない横顔で


              どこかであなたが今　わたしと同じ様な
              涙にくれ　淋しさの中にいるなら
              わたしのことなどどうか　忘れてください
              そんなことを心から願うほどに
              今でもあなたはわたしの光


              自分が思うより
              恋をしていたあなたに
              あれから思うように
              息ができない
              あんなに側にいたのに
              まるで嘘みたい
              とても忘れられない
              それだけが確か


              あの日の悲しみさえ　あの日の苦しみさえ
              そのすべてを愛してた　あなたとともに
              胸に残り離れない　苦いレモンの匂い
              雨が降り止むまでは帰れない
              切り分けた果実の片方の様に
              今でもあなたはわたしの光",
  genre: "Pop",
  composer: "Kenshi Yonezu",
  release: Date.new(2018, 2)
}
[gurenge, lemon].each do |attributes|
  song = Song.new(attributes)
  puts "Created #{song.en_title}"
end
puts "Assigning artists"
gurenge.artist = @lisa
lemon.artist = @kenshi
gurenge.save!
lemon.save!
puts "Finished"
