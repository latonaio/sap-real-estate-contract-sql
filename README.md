# sap-real-estate-contract-sql

sap-real-estate-contract-sql は、主にエッジアプリケーションにおいて、SAPと連携された不動産契約データを保存するSQLテーブルを作成するためのレポジトリです。  
sap-real-estate-contract-sql は、そのままクラウド環境におけるアプリケーションにも、適用可能です。  

## 前提条件  
sap-real-estate-contract-sql は、SQL の SAP とのデータ連携にあたり、オンプレミス版である（＝クラウド版ではない）SAPS4HANA API の利用を前提としています。クラウド版APIを利用する場合は、ご注意ください。  
https://api.sap.com/api/OP_API_RECONTRACT_0001/overview  
本レポジトリ の sql設定ファイルの内容は、上記URL の API 仕様を前提としています。  

## sqlの設定ファイル

sap-real-estate-contract-sql には、sqlの設定ファイルとして以下のsqlファイルが含まれています。  

* sap-real-estate-contract-sql-contract-data.sql（SAP 不動産契約 - 契約）
* sap-real-estate-contract-sql-contract-condition-data.sql（SAP 不動産契約 - 契約条件）
* sap-real-estate-contract-sql-contract-notice-term-data.sql（SAP 不動産契約 - 契約通知期間）
* sap-real-estate-contract-sql-contract-object-assignment-data.sql（SAP 不動産契約 - 契約対象割当）
* sap-real-estate-contract-sql-contract-posting-term-data.sql（SAP 不動産契約 - 契約提示期間）
* sap-real-estate-contract-sql-contract-assignment-term-data.sql（SAP 不動産契約 - 契約割当期間）
* sap-real-estate-contract-sql-contract-reminder-date-data.sql（SAP 不動産契約 - 契約リマインダー日付）
* sap-real-estate-contract-sql-contract-reminder-rule-data.sql（SAP 不動産契約 - 契約リマインダールール）
* sap-real-estate-contract-sql-contract-renewal-term-data.sql（SAP 不動産契約 - 契約更新期間）
* sap-real-estate-contract-sql-contract-rythm-term-data.sql（SAP 不動産契約 - 契約リズム期間）
* sap-real-estate-contract-sql-contract-contract-valuation-condition-data.sql（SAP 不動産契約 - 契約評価条件）
* sap-real-estate-contract-sql-contract-contract-valuation-data.sql（SAP 不動産契約 - 契約評価）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。

