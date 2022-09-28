# README

# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
|nickname            |string               |                 null:false|
|email               |string               |unique: true     null:false|
|encrypted_passward  |string               |                 null:false|
|first name          |string               |                 null:false|
|family name         |string               |                 null:false|
|first name kana     |string               |                 null:false|
|family name kana    |string               |                 null:false|
|birthday            |date                 |                 null:false|


### Association

- has_many :product
- has_many :order

## products table

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
|title                                |string      |                        null:false|
|explanationn                         |text        |                        null:false|
|category_id                          |integer     |                        null:false|
|condition_id                           |integer     |                        null:false|
|delivery_id                          |integer     |                        null:false|
|prefecture_id                        |integer     |                        null:false|
|deliveryday_id                       |integer     |                        null:false|
|price                              |integer     |                        null:false|
|user                              |references  |  null:false         foreign_key: true|

### Association

- belongs_to :users
- has_one :order

## addresses table

| Column           | Type        | Options                        |
|------------------|-------------|--------------------------------|
|post_code         |string     |                        null:false|
|prefecture_id     |integer     |                        null:false|
|city              |string     |                        null:false|
|house_number      |string     |                        null:false|
|building_name     |string     |                                  |
|phone_number      |string     |                        null:false|
|order            |references |     foreign_key: true   null:false|

### orders table

| Column           | Type        | Options                        |
|------------------|-------------|--------------------------------|
| user             |references |   foreign_key: true   null:false|
| product            |references |    foreign_key: true  null:false |
### Association

- belongs_to :user
- belongs_to :product
- has_one :adress