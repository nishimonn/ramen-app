# README

# アプリケーション名
## ramen-app
# アプリケーション概要 
自分が食べたいラーメンの検索、レビューができる
# URL
デプロイ済みのURLを記述しましょう。デプロイが済んでいない場合は、デプロイ次第記述しましょう。
# テスト用アカウント
ログイン機能等を実装した場合は、記述しましょう。またBasic認証等を設けている場合は、そのID/Passも記述しましょう。
# 利用方法

# 目指した課題解決
その日に自分が食べたいラーメンをすぐに検索し、レビューができるようにしたい
# 洗い出した要件
スプレッドシートにまとめた要件定義を、マークダウンで記述しなおしましょう。
# 実装した機能についてのGIFと説明
実装した機能について、それぞれどのような特徴があるのか列挙しましょう。GIFを添えることで、イメージがしやすくなります。
# 実装予定の機能
洗い出した要件の中から、今後実装予定のものがあれば記述しましょう。
# データベース設計
ER図等を添付しましょう。
# ローカルでの動作方法
git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述しましょう。この時、アプリケーション開発に使用した環境を併記することを忘れないでください（パッケージやRubyのバージョンなど）。

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
