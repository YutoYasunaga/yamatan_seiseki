# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
100.times do |i|
  Student.create(
    name: Faker::Name.name,
    code: "2820#{'%02d' % i}",
    department: ['情報メディア学科', '児童教育学科', '初等教育学専攻'].sample,
    enter_school_year: [2014, 2015, 2016].sample,
    password: 'yamatan',
    password_confirmation: 'yamatan'
  )
end
=end

Subject.create(
  name: '学問と人間の探求',
  credit: 2,
  division: '基礎',
  section: '必修',
  department: '全学科'
)

Subject.create(
  name: '国際交流',
  credit: 2,
  division: '基礎',
  section: '必修',
  department: '全学科'
)

Subject.create(
  name: '英語会話',
  credit: 2,
  division: '基礎',
  section: '必修',
  department: '全学科'
)

Subject.create(
  name: '健康科学',
  credit: 1,
  division: '基礎',
  section: '必修',
  department: '全学科'
)

Subject.create(
  name: 'スポーツ教育',
  credit: 1,
  division: '基礎',
  section: '必修',
  department: '全学科'
)

Subject.create(
  name: '宗教学',
  credit: 2,
  division: '基礎',
  section: '選択',
  department: '全学科'
)

Subject.create(
  name: '生活と芸術',
  credit: 2,
  division: '基礎',
  section: '選択',
  department: '全学科'
)

Subject.create(
  name: '余暇生活論',
  credit: 2,
  division: '基礎',
  section: '選択',
  department: '全学科'
)

Subject.create(
  name: '比較文化概説',
  credit: 2,
  division: '基礎',
  section: '選択',
  department: '全学科'
)

Subject.create(
  name: '日本国憲法',
  credit: 2,
  division: '基礎',
  section: '選択',
  department: '全学科'
)

Subject.create(
  name: '現代社会問題',
  credit: 2,
  division: '基礎',
  section: '選択',
  department: '全学科'
)

Subject.create(
  name: '社会福祉援助概説',
  credit: 2,
  division: '基礎',
  section: '選択',
  department: '全学科'
)

Subject.create(
  name: '行動科学',
  credit: 2,
  division: '基礎',
  section: '選択',
  department: '全学科'
)

Subject.create(
  name: '現代の数学観',
  credit: 2,
  division: '基礎',
  section: '選択',
  department: '全学科'
)

Subject.create(
  name: '物理学',
  credit: 2,
  division: '基礎',
  section: '選択',
  department: '全学科'
)

Subject.create(
  name: '化学',
  credit: 2,
  division: '基礎',
  section: '選択',
  department: '全学科'
)

Subject.create(
  name: '生物学',
  credit: 2,
  division: '基礎',
  section: '選択',
  department: '全学科'
)

Subject.create(
  name: '地学',
  credit: 2,
  division: '基礎',
  section: '選択',
  department: '全学科'
)

Subject.create(
  name: '認知科学',
  credit: 2,
  division: '基礎',
  section: '選択',
  department: '全学科'
)

Subject.create(
  name: '言葉とコミュニケーション',
  credit: 2,
  division: '基礎',
  section: '選択',
  department: '全学科'
)

Subject.create(
  name: 'ハングル',
  credit: 2,
  division: '基礎',
  section: '選択',
  department: '全学科'
)

Subject.create(
  name: '日本語',
  credit: 2,
  division: '基礎',
  section: '選択',
  department: '全学科'
)

Subject.create(
  name: '情報科学概論',
  credit: 2,
  division: '専門',
  section: '必修',
  department: '情報メディア学科'
)

Subject.create(
  name: '情報モラルとセキュリティ',
  credit: 2,
  division: '専門',
  section: '必修',
  department: '情報メディア学科'
)

Subject.create(
  name: '情報数学',
  credit: 2,
  division: '専門',
  section: '必修',
  department: '情報メディア学科'
)

Subject.create(
  name: 'オペレーティングシステム',
  credit: 2,
  division: '専門',
  section: '必修',
  department: '情報メディア学科'
)

Subject.create(
  name: 'コンピュータの仕組み',
  credit: 2,
  division: '専門',
  section: '必修',
  department: '情報メディア学科'
)

Subject.create(
  name: 'プログラミング基礎',
  credit: 4,
  division: '専門',
  section: '必修',
  department: '情報メディア学科'
)

Subject.create(
  name: 'プレゼンテーション技術',
  credit: 2,
  division: '専門',
  section: '必修',
  department: '情報メディア学科'
  )

Subject.create(
  name: '工学リテラシー',
  credit: 2,
  division: '専門',
  section: '必修',
  department: '情報メディア学科'
)

Subject.create(
  name: '卒業研究',
  credit: 2,
  division: '専門',
  section: '必修',
  department: '情報メディア学科'
)

Subject.create(
  name: '情報と職業',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: '情報数学応用',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'プログラミング応用',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'アルゴリズム',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'エレクトロニクス基礎',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'マイクロコンピュータ工学',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: '電子情報実験I',
  credit: 1,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: '電子情報実験II',
  credit: 1,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'CAD',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: '通信ネットワーク',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'WEBコンテンツ制作',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'WEBデザイン基礎',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'データベースI',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'データベースII',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'Java 演習I',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'Java 演習II',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'メデイアリテラシー',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: '画像処理ー',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'コンピュータグラフィックI',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'コンピュータグラフィックII',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'メデイアコンテンツ制作',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'OA演習',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: '中小企業会計学',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'ビジネス演習',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: '特別講義I',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: '特別講義II',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: '特別講義III',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'WEBアニメーション',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'キャリア教育',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'ソフトウェア設計',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: '電気回路I',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: '電気回路II',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: '電気回路',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'デジタル回路',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)

Subject.create(
  name: 'ロボット制作演習',
  credit: 2,
  division: '専門',
  section: '選択',
  department: '情報メディア学科'
)
