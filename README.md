# README

# アプリケーション名
## ramen-app
# アプリケーション概要 
自分が食べたいラーメンのレビューができる
# URL
現在修正中のためデプロイ次第記載
# テスト用アカウント
Email/nisi@gmail.com
Password/aaa111
# 利用方法
ログインしたユーザーのみ保存してあるラーメン店のレビューがおこなえる
# 目指した課題解決
自分が食べたことのあるラーメン店のレビューができるようにしたい

# 実装した機能についてのGIFと説明
ユーザーのログイン機能
https://gyazo.com/b83673a7daf31abb7cc2d33a6d0a0e9c

ログインしたユーザーのみラーメン店のレビューができる
https://gyazo.com/7a1efb8a3615a7d352bbfefb04bf9e02

# 実装予定の機能
・ラーメン店の名前をキーワードで検索できるようにする
・ラーメン店の画像を表示できるようにする
# データベース設計
https://gyazo.com/cd3bf9ee05f7fb4a4ea9d645f25768f7
# ローカルでの動作方法
Ruby-version/2.6.5

# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :reviews
- has_many :ramen_shops


## reviews テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| user_id | references | null: false, foreign_key: true |
| ramen_shop_id | references | null: false, foreign_key: true |
|content|string|
|score| integer|

### Association

- belongs_to :ramen_shop
- belongs_to :user

## ramen_shops テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name | text | null: false |
| genre_id | integer | nill: false |

### Association

- has_many :reviews
- belongs_to :user
