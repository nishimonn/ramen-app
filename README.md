
## アプリケーション名
ramen-app
<img width="1333" alt="ラーメン店一覧" src="https://user-images.githubusercontent.com/69832705/98069926-681a7900-1ea3-11eb-90bd-81d477555d8c.png">

## 制作背景
普段の生活でラーメンを食べる機会が多く、ラーメン店の情報を簡単に検索、レビューができるようにしたい！多くの人とシェアしたい！と思いこのアプリケーションを作成しました。
## アプリケーション概要 
自分が食べたいラーメン店をジャンルやキーワードで検索し、ラーメン店のレビューができる。
## URL
現在修正中のためデプロイ次第記載
## テスト用アカウント
Email/nisi@gmail.com  
Password/aaa111
## 利用方法
・誰でも登録してあるラーメン店をジャンルやキーワードで検索できる  
・ログインユーザーのみラーメン店のレビューがおこなえる  
## 目指した課題解決
・管理者のみがラーメン店の情報を保存できるようにする。  
・キーワードかジャンルでラーメン店を検索できるようにする。  
・ログインしているユーザーのみラーメン店のレビューができるようにする。  
・レビュー時にコメントと星５段階で評価する機能をつける。  


## 実装した機能についてのGIFと説明
・ユーザーのログイン機能
![ラーメンレビュートップページ](https://user-images.githubusercontent.com/69832705/98067874-e116d200-1e9d-11eb-997d-706559a45170.jpg)


・ログインしたユーザーのみラーメン店のレビューができる
![レビューの様子](https://user-images.githubusercontent.com/69832705/98067936-060b4500-1e9e-11eb-86c3-7ec2c2526365.jpg)


## 実装予定の機能
・ラーメン店の名前をキーワードで検索できるようにする  
・ラーメン店の画像を表示できるようにする  
・ラーメン店の地図を表示できるようにする  
## データベース設計
<img width="901" alt="ラーメンレビューER図" src="https://user-images.githubusercontent.com/69832705/98067983-23401380-1e9e-11eb-8959-06b79d0af90b.png">


## 使用言語
言語・フレームワーク  
　Ruby-version/2.6.5  
フロント  
　HTML/CSS/Javascript  
データベース  
　MySQL

## テーブル設計

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
