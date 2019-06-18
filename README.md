# README

## schedulesテーブル

|Column|Type|Options|
|------|----|-------|
|plan|text|null: false|
|place|text||
|memo|text||
|day|date|null: false|
|start_time|time|null: false|
|emd_time|time||

### Association
- belongs_to :user

## notesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text||
|image|text||
|day|date|null: false|

### Association
- belongs_to :user
