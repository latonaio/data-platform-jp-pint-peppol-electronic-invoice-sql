# data-platform-jp-pint-peppol-electronic-invoice-sql

data-platform-jp-pint-electronic-invoice-sql　は、データ連携基盤において、JP PINT(日本版Peppol) の 電子インボイスデータを維持管理する SQL テーブルを作成するためのレポジトリです。  

## peppolとは

Peppol（ペポル）とは、請求等にかかる電子文書をネットワーク上でやり取りするための「文書仕様」「ネットワーク」「運用ルール」の国際規格です。  
国際的な非営利組織であるOPEN PEPPOLが管理運営しており、「操作がシンプルで、導入のハードルが低い」「ユーザー間でデータ連携が進み、業務コストの削減が実現できている」といった評価がされています。  
日本標準仕様として、[公式仕様](https://test-docs.peppol.eu/japan/master/billing-1.0/invoice-1.0/semantic-model/) や [GitHub](https://github.com/OpenPEPPOL/peppol-bis-invoice-3)が公開されています。  

## 前提条件

data-platform-jp-pint-peppol-electronic-invoice-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview  

## sql の設定ファイル

data-platform-peppol-electronic-invoice-sql には、sql の設定ファイルとして以下の sql ファイルが含まれています。

* data-platform-jp-pint-peppol-electronic-invoice-sql-header-data.sql（データ連携基盤 JP PINT Peppol 電子インボイス - ヘッダデータ）
* data-platform-jp-pint-peppol-electronic-invoice-sql-header-partner-data.sql（データ連携基盤 JP PINT Peppol 電子インボイス - ヘッダ取引先データ）
* data-platform-jp-pint-peppol-electronic-invoice-sql-header-pdf-data.sql（データ連携基盤 JP PINT Peppol 電子インボイス - ヘッダPDFデータ）
* data-platform-jp-pint-peppol-electronic-invoice-sql-item-data.sql（データ連携基盤 JP PINT Peppol 電子インボイス - 明細データ）
* data-platform-jp-pint-peppol-electronic-invoice-sql-item-partner-data.sql（データ連携基盤 JP PINT Peppol 電子インボイス - 明細取引先データ）

## パートナーファンクション(取引先機能)

data-platform-jp-pint-peppol-electronic-invoice-sql では、パートナーファンクション(取引先機能)によって、関係者が分類されています。  
パートナーファンクションを用いて、Peppolの請求書データに関するパートナーテーブルを定義することにより、Peppolのデータ項目を整理し、データ項目の種類の総量を削減して、より効率的な、Peppolデータフォーマット体系のデータマネジメントを行うことができます。    

data-platform-jp-pint-peppol-electronic-invoice-sql におけるパートナーファンクションは、2桁のコードで例示され、  

* Seller / 請求主体 : IV or 仕入先 : SP
* Buyer / 受注先 : CS and 請求先 : BL
* Payee / 受取人 : RV
* PaymentServiceProvider / 支払決済サービスプロバイダ : PS

となっています。  
（上記は例であり、用途に応じて任意のパートナーファンクションを定義してください）

## マッピング表

## MySQL のセットアップ / Kubernetes の設定 / SQL テーブルの作成方法

MySQL のセットアップ / Kubernetes の設定 / 具体的な SQL テーブルの作成方法、については、[mysql-kube]( https://github.com/latonaio/mysql-kube )を参照ください。
