# README

# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
|nickname.           |string型             | NOT NULL        null:false|
|email               |string型             | NOT NULL        null:false|
|passward            |string型             | NOT NULL        null:false|
|first name.         |string型             | NOT NULL        null:false|
|family name         |string型             | NOT NULL        null:false|
|first name kana     |string型             | NOT NULL        null:false|
|family name kana    |string型             | NOT NULL        null:false|
|year                |string型             | NOT NULL        null:false|
|month               |string型             | NOT NULL        null:false|
|day                 |string型             | NOT NULL        null:false|


### Association

* has_many :product
* has_many :comments

## product table

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
|title                                |string型     | NOT NULL             null:false|
|explanationn                         |string型     | NOT NULL             null:false|
|category                             |string型     | NOT NULL             null:false|
|condition                            |string型     | NOT NULL             null:false|
|delivery                             |string型     | NOT NULL             null:false|
|sender                               |string型     | NOT NULL             null:false|
|day                                  |string型     | NOT NULL             null:false|
|price                                |string型     | NOT NULL             null:false|
|commission                           |string型     | NOT NULL             null:false|
|profit                               |string型     | NOT NULL             null:false|
|user                                 |references型 | NOT NULL                外部キー|

### Association

- belongs_to :user
- has_many :purchase

## purchase table

| Column           | Type        | Options                        |
|------------------|-------------|--------------------------------|
|          |string型     | NOT NULL             null:false|
|expiration month  |string型     | NOT NULL             null:false|
|expiration  year  |string型     | NOT NULL             null:false|
|security code     |string型     | NOT NULL             null:false|
|zipcode           |string型     | NOT NULL             null:false|
|prefecture        |string型     | NOT NULL             null:false|
|city              |string型     | NOT NULL             null:false|
|house_number      |string型     | NOT NULL             null:false|
|building_name     |string型     | NOT NULL             null:false|
|phone_number      |string型     | NOT NULL             null:false|
|user              |references型 | NOT NULL                外部キー|
|product           |references型 | NOT NULL                外部キー|

### Association

- belongs_to :product
- belongs_to :user
 