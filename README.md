# data-platform-quotations-sql 

data-platform-quotations-sql は、データ連携基盤において、見積データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-quotations-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-quotations-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-quotations-sql-header-data.sql（データ連携基盤 見積 - ヘッダデータ）
* data-platform-quotations-sql-header-customer-contact-data.sql（データ連携基盤 見積 - ヘッダ得意先コンタクトデータ）
* data-platform-quotations-sql-header-supplier-contact-data.sql（データ連携基盤 見積 - ヘッダ仕入先コンタクトデータ）
* data-platform-quotations-sql-header-partner-data.sql（データ連携基盤 見積 - ヘッダ取引先データ）
* data-platform-quotations-sql-header-partner-contact-data.sql（データ連携基盤 見積 - ヘッダ取引先コンタクトデータ）
* data-platform-quotations-sql-header-partner-plant-data.sql（データ連携基盤 見積 - ヘッダ取引先プラントデータ）
* data-platform-quotations-sql-header-pdf-data.sql（データ連携基盤 見積 - ヘッダPDFデータ）
* data-platform-quotations-sql-item-data.sql（データ連携基盤 見積 - 明細データ）
* data-platform-quotations-sql-item-partner-data.sql（データ連携基盤 見積 - 明細取引先データ）
* data-platform-quotations-sql-item-pricing-element-data.sql（データ連携基盤 見積 - 明細価格決定要素データ）
* data-platform-quotations-sql-partner-address-data.sql（データ連携基盤 オーダー - 取引先住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
