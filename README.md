# README

# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
|nickname            |string               |                 null:false|
|email               |string               |UNIQUE           null:false|
|encrypted_passward  |string               |                 null:false|
|first name          |string               |                 null:false|
|family name         |string               |                 null:false|
|first name kana     |string               |                 null:false|
|family name kana    |string               |                 null:false|
|day                 |date               |                 null:false|


### Association

* has_many :products
* has_many :comments

## products table

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
|title                                |string      |                        null:false|
|explanationn                         |text        |                        null:false|
|category                             |integer     |                        null:false|
|condition                            |integer     |                        null:false|
|delivery_id                          |integer     |                        null:false|
|sender_id                            |integer     |                        null:false|
|day_id                               |integer     |                        null:false|
|price_id                              |integer     |                        null:false|
|user_id                              |references  |                                   |

### Association

- belongs_to :users
- has_many :adresses

## adresses table

| Column           | Type        | Options                        |
|------------------|-------------|--------------------------------|
|prefecture_id     |string     |                        null:false|
|city              |string     |                        null:false|
|house_number      |string     |                        null:false|
|building_name     |string     |                                  |
|phone_number      |string     |                        null:false|
|orders            |reference |                                   |

### Association

- belongs_to :product
- belongs_to :user

### orders table

| Column           | Type        | Options                        |
|------------------|-------------|--------------------------------|
| user             |references型 |                                |
| items            |references型 |                                |
