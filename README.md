# アプリケーション名
### Idog

# アプリケーション概要
 - 商品の使用感を共有できるアプリケーションを作成しました。

# アプリケーションURL
 - https://i-dog-51306102.herokuapp.com/

# テスト用ログインアカウント
 - Email :test@111
 - Pass  :test111

 - 基本は、ログインしていなくてもアプリケーションを利用する事が可能です。しかし、一部機能はログインしていないと利用することができません。

# 利用方法
 1. トップページにて、犬種名や商品のジャンルをクリックしていただくとそれらに関連する商品が一覧表示されます。
 2. 一覧表示されている商品の一つクリックしていただく事で、商品の詳細な情報が記されたページが表示されます。
 3. 商品の詳細ページにて、レビューの投稿や閲覧が可能となっております。

# 目指した課題解決
 - 私は、このアプリケーションを通じて愛犬家の方や、家で一緒に犬と暮らしているという方の犬用品の購入に関する不安や疑問を解決したいと想いこのアプリケーションを作成しました。

# 洗い出した要件

| 機能 | 目的 | 詳細 | ストーリー(ユースケース) |
| --- | ---- | --- | -------------------- |
| ユーザー登録機能 | ユーザーの新規登録・ログイン・ログアウトができるようになること | deviseを使用してユーザー登録機能を実装できるようにする事 | ・ログインしていないユーザーが新規登録を行えるようにする  ・ログインしているユーザーはログアウトが行えるようにする |
|  |  |                                                                                                                   |  |
| カテゴリ分けされたトップページ | トップページで欲しいアイテムを探せるようにするため | 商品が犬種やジャンルごとにあらかじめ分けられていて商品を探しやすくする | ・ログインしていなくても商品をみることができること |
|  |  |                                                                                                                               | ・カテゴリをクリックしたら該当する商品のページを表示する |
| 商品詳細  | 気になる商品の詳細情報が見られるようになること | 商品詳細ページで商品の詳細情報が閲覧できるようになる | ・商品の画像が表示されていること |
|  |  |                                                                                           | ・商品名/商品説明/商品のジャンル/などの商品に関する情報を表示すること |
| レビュー投稿機能 | 商品のレビューを書き込むことができるようになること | 商品を選択して商品詳細ページでレビューの投稿と確認をできるようにする | ・前提として、画像が投稿されていること |
|  |  |                                                                                                                 | ・レビューの投稿はログインしていないとできないこと |
|  |  |                                                                                                                 | ・商品詳細ページで投稿ができる |
| マイページの実装 | 個人的な情報を集めて見る事ができるようになること | お気に入り登録をした商品の確認や投稿したレビューの編集・削除をできるようにする | ・お気に入りに登録した商品をクリックすると商品詳細ページへ遷移する |
|  |  |                                                                                                                        | ・マイページで投稿したレビューの編集・削除ができるようにする |
| 商品検索機能 | ユーザーの方が簡単に商品を探すことができるようになること | キーワードを入れて検索し商品の情報の取得を可能にする | ・商品名/ジャンル/犬種/などの検索条件を指定する欄を儲ける |
|  |  |                                                                                                      | ・条件に該当する商品の検索結果のページで表示する |
| お気に入り機能 | お気に入り登録しておくことで後からでも確認できるようにすること | 商品詳細ページでお気に入り登録ができるようになる | ・ハートマークをクリックするとお気に入り登録ができてマイページで確認できるようになる |
|  |  |                                                                                                         | ・ログインしていないと表示されない |
| パンクズリスト | 現在地がわかるようになること | どういった経路で商品が表示されているのか確認できるようにする | ・表示されているカテゴリ名をクリックするとそのページへ遷移できる |
| AWSの導入 | herokuでデプロイ後、画像のリンク切れを防ぐための対策のため | アプリがデプロイされるか、もしくはアプリが再起動しても画像がリンク切れにならないようにすること | ・前提として、herokuでデプロイができていることと、画像が存在していること |
|  |  |                                                                                                                                         | ・画像がリンク切れになっておらず画像が正しく表示されていること |

# 実装した機能についての説明
 - ユーザー登録機能
   - 新規登録・ログイン・ログアウトの実装を行いました。
 - カテゴリ分けされたトップページ
   - 犬種/商品のジャンル/ごとに分けて表示するように実装を行いました。
 - 商品詳細ページ
   - 商品名/商品説明/商品のジャンル/の情報を表示しています。また、ログインしている時のみ商品に対してレビューの投稿を行うことが可能となります。それから、レビューが一覧表示されるように実装しました。
 - レビュー投稿機能
   - レビューの投稿者名/評価/タイトル/内容/犬種/の情報を入力して投稿できるように実装しました。

# 実装予定の機能
 - AWSの導入
 - 商品検索機能
 - マイページの実装
 - お気に入り機能
 - パンクズリスト

# データベース設計

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
| user_id       | integer    |  |
| item_id       | integer    |  |

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

# ER図
 - https://i.gyazo.com/e0be6992f84ac3a0170ffc12ac63a911.png

# ローカルでの動作方法
 git clone [https://github.com/riku-pon/i_dog]
