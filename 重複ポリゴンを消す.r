# 必要なパッケージの読み込み
library(sf)

# 1. shpファイルの読み込み
# 例: "input_folder/polygon.shp" を適宜書き換えてください
shp_path <- "C:/Users/casakuma-lab-04-std/Downloads/サイト抽出結果/20240709_all_overlapping_polygons.shp"
polygons <- st_read(shp_path)

# 2. group_idの重複を削除（ユニークなgroup_idのみ残す）
# group_idが重複している行を除外
unique_polygons <- polygons[!duplicated(polygons$group_id), ]

# 3. 処理後のポリゴンを指定フォルダに保存
# 例: "output_folder/unique_polygons.shp" を適宜書き換えてください
output_path <- "C:/Users/casakuma-lab-04-std/Downloads/サイト抽出結果/20240709_all_overlapping_polygons_unique.shp"
st_write(unique_polygons, output_path)