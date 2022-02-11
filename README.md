# README

* Ruby version
6.0.0

## usersテーブル
|Column               |Type   |Options                  |
|---------------------|-------|-------------------------|
|nickname             |string |null: false              |
|email                |string |null: false, unique: true|
|encrypted_password   |string |null: false              |

### Association
- has_many :books
- has_many :pages
- has_many :configurations

## booksテーブル
|Column            |Type      |Options                       |
|------------------|----------|------------------------------|
|novel_title       |string    |null: false                   |
|synopsis          |text      |null: false                   |
|genre_id          |integer   |null: false                   |
|user              |references|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :pages
- has_many :configurations

## pagesテーブル
|Column     |Type       |Options                       |
|-----------|-----------|------------------------------|
|page_title |string     |null: false                   |
|novel_page |text       |null: false                   |
|user       |references |null: false, foreign_key: true|
|book       |references |null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :book

## configurationsテーブル
|Column              |Type       |Options                       |
|--------------------|-----------|------------------------------|
|category_id         |integer    |null: false                   |
|configuration_novel |string     |null: false                   |
|user                |references |null: false, foreign_key: true|
|book                |references |null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :book