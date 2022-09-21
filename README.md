# README

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| profil             | text   | null: folse |
| pccupation         | text   | null: folse |


### Association

- has_many :prototpes
- has_many :comments

## prototpes テーブル

| Column    | Type       | Options                       |
| ------    | ------     | -----------                   |
| title     | string     | null: false                   |
| catch_copy| text       | null: false                   |
| concept   | text       | null: false                   |
| user      | references | null: false,foreign_key: true |
### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column     | Type       | Options                        |
| ------     | ---------- | ------------------------------ |
| content    | text       | null: false                    |
| user       | references | null: false, foreign_key: true |
| prototypes | references | null: false, foreign_key: true |

### Association

- belongs_to :prototype
- belongs_to :user

