# shoppingApp DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
|address_number|integer|
|prefectures|string|
|city|string|null: false|
|address|string|null: false|
|tel|integer|null: false|
|image|text|
|score|string|null: false|
### Association
- has_many :prefectures
- has_many :Product
- has_many :card
- has_many :bank
- has_many :user_bank

## prefecturesテーブル
|Column|Type|Options|
|------|----|-------|
|city|string|null: false|
|address|string|null: false|
|tel|integer|null: false|
|image|text|
|score|integer|null: false|
### Association
- belongs_to :user


## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|card_number|integer|null: false, foreign_key: true|
|code|string|null: false|
|date|string|null: false|
### Association
- belongs_to :user

## banksテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|name|string|null: false|
|branch|string|null: false|
|number|integer|null: false|
### Association
- belongs_to :user

## users_banksテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|bank_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user

## Productsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|size|string|null: false|
|brand|string|null: false|
|status|string|null: false|
|price|integer|null: false|
|date|string|null: false|
|text|string|null: false|
|image|text|
|score|integer|null: false|
|send|integer|null: false|
|burden|string|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user


