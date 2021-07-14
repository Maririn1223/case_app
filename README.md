#テーブル設計

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