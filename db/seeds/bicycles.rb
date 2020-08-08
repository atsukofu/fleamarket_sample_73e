# 自転車・オートバイの子カテゴリー配列
bicycles_child_array = 
    [
      '自転車本体',
      '自転車タイヤ/ホイール',
      '自転車パーツ',
      '自転車アクセサリー',
      'オートバイ車体',
      'オートバイパーツ',
      'オートバイアクセサリー'
    ]

# 自転車・オートバイの孫カテゴリー
bicycles_grandchild_array =
[
  # 1:自動車本体
  [
    '国内自動車本体',
    '外国自動車本体'
  ],
  # 2:自転車タイヤ/ホイール
  [
    'タイヤ/ホイールセット',
    'タイヤ',
    'ホイール',
    'その他'
  ],
  # 3:自転車パーツ
  [
    'サスペンション',
    'ブレーキ',
    '外装、エアロパーツ',
    'ライト',
    '内装品、シート',
    'ステアリング',
    'マフラー・排気系',
    'エンジン、過給器、冷却装置',
    'クラッチ、ミッション、駆動系',
    '電装品',
    '補強パーツ',
    '汎用パーツ',
    '外国自動車用パーツ',
    'その他'
  ],
  # 4:自転車アクセサリー
  [
    '車内アクセサリー',
    'カーナビ',
    'カーオーディオ',
    '車外アクセサリー',
    'メンテナンス用品',
    'チャイルドシート',
    'ドライブレコーダー',
    'レーダー探知機',
    'カタログ/マニュアル',
    'セキュリティ',
    'ETC',
    'その他'
  ],
  # 5:オートバイ車体
  [
  
  ],
  # 6:オートバイパーツ
  [
    'タイヤ',
    'マフラー',
    'エンジン、冷却装置',
    'カウル、フェンダー、外装',
    'サスペンション',
    'ホイール',
    'シート',
    'ブレーキ',
    'タンク',
    'ライト、ウィンカー',
    'チェーン、スプロケット、駆動系',
    'メーター',
    '電装系',
    'ミラー',
    '外国オートバイ用パーツ',
    'その他'
  ],
  # 7:オートバイアクセサリー
  [
    'ヘルメット/シールド',
    'バイクウェア/装備',
    'アクセサリー',
    'メンテナンス',
    'カタログ/マニュアル',
    'その他'
  ]
]

parent = Category.create(name: '自転車・オートバイ')
bicycles_child_array.each_with_index do |child, i|
  child = parent.children.create(name: child)
  bicycles_grandchild_array[i].each do |grandchild|
    child.children.create(name: grandchild)
  end
end