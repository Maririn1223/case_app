# 概要
事例を投稿、閲覧するためのアプリです。  

# 制作背景
私は福祉の入所施設に勤務しています。福祉は経験年数が長ければ長いほど強い傾向にあると感じています。それは、たくさんの事例を見て、たくさんの人の意見を聞いて、支援の結果どうだったのかなどを感じることができたからではないかと思います。これまで実際に行われてきた支援の着眼点、考え方、実際に行われた支援とその結果を知ることができれば、経験年数が短い方でも、現場で即戦力になるのではないかと考えました。
また、支援については正解がないため不安になることが多くあり、第三者視点で主観的な捉え方・支援にならないよう気をつける必要があります。「いいね機能」「コメント機能」あることでモチベーションを保ち、さらには新たな視点に気付けるようなものがあればいいと思い、自分で作ってみることにしました。

# 実装予定の内容
ユーザー登録できるようにします。ユーザーはフォーマットに沿って事例を投稿できるようにします。その事例にはタグをつけ、閲覧しやすいようにします。また、コメント機能をつけ、閲覧者から新たな視点をもらったり、第三者視点で客観的な意見をもらえたりできるようにします。

# テーブル設計

## users テーブル

|Column             |Type   |Options                   |
|nickname           |string |null: false               |
|email              |string |null: false, unique: true |
|encrypted_password |string |null: false               |
|place              |string |null: false               |



### Association
-has_many :cases
-has_many :comments

## cases テーブル

|Column             |Type        |Options                   |
|title              |string      |null: false               |
|characteristic     |string      |null: false               |
|task               |string      |null: false               |
|everyday           |string      |null: false               |
|support            |string      |null: false               |
|result             |string      |                          |
|question           |string      |                          |
| user              |references  |                          |

### Association
-belongs_to :user
-has_many :comments

## comments テーブル

| Column    | Type       | Options     |
| text      | text       | null: false |
| user      | references |             |

### Association
-belongs_to :user
-belongs_to :case