# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## usersテーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |

### Association

- has_many :items
- has_many :reviews
- has_many :favorites

## itemsテーブル

| Column   | Type       | Options                        |
| -------- | -----------| ------------------------------ |
| name     | string     | null: false                    |
| content  | text       | null: false                    |
| genre_id | integer    | null: false                    |
| user     | references | null: false, foreign_key: true |
 
### Association

- belongs_to :user
- has_many   :reviews
- has_many   :favorites

## reviewsテーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| evaluation_id | integer    | null: false                    |
| title         | string     | null: false                    |
| content       | text       | null: false                    |
| dog_breed_id  | integer    | null: false                    |
| user          | references | null: false, foreign_key: true |
| item          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item

## favoriteテーブル

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| user_id  | integer | null: false |
| item_id  | integer | null: false |

### Association

- belongs_to :user
- belongs_to :item
