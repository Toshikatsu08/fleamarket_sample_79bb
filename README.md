# :earth_asia: 概要
テックキャンプの最終課題にて作成したアプリケーションを紹介します。  
また本資料では、自身で実装した箇所、および開発を通じて得られた経験についても紹介します。

# :earth_asia: アプリケーション情報
## アプリケーション概要
フリーマーケット
![スクリーンショット 2020-08-17 17 53 08](https://user-images.githubusercontent.com/67052090/90486833-87431d80-e174-11ea-8913-2823e103c476.png)

## 接続先情報  
### URL  
http://54.150.110.46/
### ID/Pass  
ID: soccer  
Pass: soccer08  
### テスト用アカウント等  
* 購入者用  
メールアドレス: aaa@aaa  
パスワード: soccer08
* 購入用カード情報  
番号： 4242424242424242  
期限： Sat Feb 01 2025  
セキュリティコード：1111  
* 出品者用  
メールアドレス: bbb@bbb  
パスワード: soccer08  

# :earth_asia: 開発状況
## 開発環境
Ruby  
Ruby on Rails  
MySQL  
Github  
AWS  
Visual Studio Code  

## 開発期間と平均作業時間
開発期間：7/22~8/14  22 日間  
1日あたりの平均作業時間：9 時間  
## 開発体制
人数：5  
アジャイル型開発（スクラム）  
Trelloによるタスク管理  

# :earth_asia: 動作確認方法
Chromeの最新版を利用してアクセスしてください。  
ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続ください。  
接続先およびログイン情報については、上記の通りです。  
同時に複数の方がログインしている場合に、ログインできない可能性がございます。  

#### 商品出品は以下の手順で確認できます。  
テストアカウントでログイン→トップページから出品ボタン押下→商品情報入力→商品出品  
#### 購入方法は以下の手順で確認できます。  
テストアカウントでログイン→マイページでクレジットカードを登録→トップページから商品を選択→商品購入  

#### 確認後、ログアウト処理をお願いします。


# :earth_asia: 開発担当箇所
## 担当箇所一覧と確認方法  
* スクラムマスター  
* トップページ(フロントエンド)  
* 商品一覧ページ(フロント、バックエンド)  
* トップページの「新規投稿商品一覧」からご覧いただけます。  
* ユーザー新規登録・ログイン機能(バックエンド)
* AWSを使ったデプロイ  

# :earth_asia: 各担当箇所の詳細
## スクラムマスター
### 概要　　
チーム開発を円滑に効率良く進める
### 担当内容
開発スケジュールの設定  
チームの進捗管理  
1日3回のチームMTGの進行  
## トップページ(フロントエンド)
### 概要
ユーザーの入り口  
アプリの説明や特徴を記載  
### 担当内容  
haml, scss, javascriptを使いマークアップ  
## 商品一覧ページ(フロント、バックエンド)  
### 概要
商品を新着順でトップページに表示  
「新規投稿商品」にアクセスすると登録された商品が一覧表示  
### 担当内容
トップに商品が新着順で4件表示されるようにコントローラーに記述  
## ユーザー新規登録・ログイン機能  
### 概要
ユーザーが出品・購入をするために不可欠な機能  
### 担当内容
gem ‘devise’を導入  
ウィザード形式での実装  
## AWSを使ったデプロイ  
### 概要
アプリを全世界にむけて公開する  
### 担当内容  
EC2を使ってIPアドレスを取得  
S3を使って本番環境での画像の保存先はS3、ローカル環境ではpublicフォルダに保存されるように条件分岐  
basic認証を導入し、一部のユーザーのみ利用できるように設定。  
　　　　　　　
# :earth_asia:開発を通じて得られた知見
## 工夫した点
### ①チームとして工夫を行った点
今回スクラムマスターを務めましたので、開発を効率良く進めるために一日3回行うMTGについて以下のルールを提案しました。  

「エラーが発生して先に進まない場合はMTGで報告する。その場ですぐ解決できる場合はMTG内で解決。その場での解決が難しいと私が判断した場合はMTG終了後に分かる人と個別で解決。それでも解決できない場合はメンターに相談する。」  

以上のルール決めを初期の段階で決めたことで無駄にMTGが長引くことなくスケジュール通りに開発を進めることができました。

### ②個人として工夫を行った点
#### 「メンバーが書いたコードを理解する」
メンバーの書いたコードをしっかり理解した上でマージを行うことを心がけました。  

特にpay.jpを使った商品購入機能、ancestoryを使ったカテゴリー機能、javascriptを使った商品出品機能の部分は個人的に非常に興味があった部分なので、私が担当しても実装できるレベルまで理解することを心がけました。

## 苦労した点
### ①チームとして苦労した点
#### 「開発する順序」
設計→マークアップ→デプロイ→DB設計→サーバサイドの順で開発を行いました。

設計の時点で「ユーザーの新規登録・ログイン機能を実装した上でないと、商品購入機能は実装できない」ことを把握していれば、より効率良く開発を進めることができました。
おそらく今より2日早く開発を終えることができました。

この教訓から最初の設計をチームでもっと入念に行うことの大切さを学びました。


### ②個人として苦労した点
#### 「相手に自分が考えていることを口で伝えること」
頭では分かっていてもいざ口に出すとその言葉が出てこなかったり、流れをうまく説明できないことが多々ありました。  

相手に分かりやすく伝えるために、常日頃から相手に説明するつもりで作業や勉強をする癖を身に付けることができました。  

以上

# :earth_asia: DB設計
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|birthday|date|null :false|

### Association

- has_many :items, dependent: :destroy
- has_one :destination, dependent: :destroy
- has_one :user_profile, dependent: :destroy
- has_one :credit_card, dependent: :destroy
- has_many :buy_items, foreign_key: 'buyer_id', class_name: 'Item'
- has_many :sell_items, foreign_key: 'seller_id', class_name: 'Item', -> { where("buyer_id is NULL") }
- has_many :sold_items, foreign_key: 'seller_id, class_name: 'Item', -> { where("buyer_id is not NULL") }
 
## profilesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|string|null: false, foreign_key: true|

### Association

- belongs_to :user

## destinationsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|ship_last_name|string|null: false|
|ship_last_name_kana|string|null: false|
|ship_first_name|string|null: false|
|ship_first_name_kana|string|null: false|
|phone_number|bigint|null: false, unique: true|
|zip_code|integer|null: false|
|prefecture|string|null: false|
|address|string|null: false|
|second_address|string||

### Association

- belongs_to :user

## credit_cardsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|string|null: false, foreign_key: true|
|card_number|integer|null: false|
|card_month|integer|null: false|
|card_year|integer|null: false|
|card_code|integer|null: false|

### Association

- belongs_to :user

## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|item_name|string|null: false|
|description|text|null: false|
|brand|string||
|condition|string|null: false|
|postage_id|string|null: false|
|prefecture_id|string|null: false|
|preparation_id|string|null: false|
|price|string|null: false|
|user|integer|null: false|
|buyer|integer||

### Association

- has_many :images, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_many :favorites, dependent: :destroy
- belongs_to :category
- belongs_to :seller, class_name: 'User', foreign_key: 'seller_id'
- belongs_to :buyer, class_name: 'User', foreign_key: 'buyer_id, optional: true'

## categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string||

### Association

- has_many :items
- has_ancestry

## imagesテーブル

|Column|Type|Options|
|------|----|-------|
|item_id|string|null: false, foreign_key: true|
|image|string|null: false|

### Association

- belongs_to :item

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
|comment|text|null: false, foreign_key: true|

### Association

- belongs_to :user
- belongs_to :item

## favoritesテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item
