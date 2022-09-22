# README

# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
|nickname            |string               |                 null:false|
|email               |string               |                 null:false|
|passward            |string               |                 null:false|
|first name          |string               |                 null:false|
|family name         |string               |                 null:false|
|first name kana     |string               |                 null:false|
|family name kana    |string               |                 null:false|
|year                |date               |                 null:false|
|month               |date               |                 null:false|
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
|delivery                             |integer     |                        null:false|
|sender                               |integer     |                        null:false|
|day                                  |integer     |                        null:false|
|price                                |integer     |                        null:false|
|user                                 |references  |                                   |

### Association

- belongs_to :users
- has_many :adresses

## adresses table

| Column           | Type        | Options                        |
|------------------|-------------|--------------------------------|
|                  |string     |                        null:false|
|expiration month  |string     |                        null:false|
|expiration  year  |string     |                        null:false|
|security code     |string     |                        null:false|
|zipcode           |string     |                        null:false|
|prefecture        |string     |                        null:false|
|city              |string     |                        null:false|
|house_number      |string     |                        null:false|
|building_name     |string     |                        null:false|
|phone_number      |string     |                        null:false|
|orders           |references |                                   |

### Association

- belongs_to :product
- belongs_to :user
