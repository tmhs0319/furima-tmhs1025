# README

# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
|nickname            |string               |                 null:false|
|email               |string               |UNIQUE:true      null:false|
|encrypted_passward  |string               |                 null:false|
|first name          |string               |                 null:false|
|family name         |string               |                 null:false|
|first name kana     |string               |                 null:false|
|family name kana    |string               |                 null:false|
|birthday            |date                 |                 null:false|


### Association

* has_many :products

## products table

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
|title                                |string      |                        null:false|
|explanationn                         |text        |                        null:false|
|category_id                          |integer     |                        null:false|
|condition                            |integer     |                        null:false|
|delivery_id                          |integer     |                        null:false|
|sender_id                            |integer     |                        null:false|
|day_id                               |integer     |                        null:false|
|price                              |integer     |                        null:false|
|user                              |references  |                                   |

### Association

- belongs_to :user
- has_many :item

## adresses table

| Column           | Type        | Options                        |
|------------------|-------------|--------------------------------|
|post_code         |string     |                        null:false|
|prefecture_id     |integer     |                        null:false|
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
