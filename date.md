# DB 構造

## prefectures

- 北海道田畑
- id 田畑
- name 田畑
- slug 田畑

## areas

- エリア
- id
- name
- slug
- pref_id

## grades

- 学年
- id
- name
- slug

## brands

- 塾ブランド
- id
- name
- class_format
- grade_ids

## schools

- 校舎情報
- id
- name
- address
- area_id

# API 構造

## 都道府県

- 全件取得
  - GET : prefectures/

## エリア

- getAreaByPrefID
  - GET : areas/:id

## 塾ブランド

- 全件取得
  - GET : brands/
- getBrandByID
  - GET : brands/:id

## 校舎

- getSchoolsByBrandID
  - GET : schools/:brandID
