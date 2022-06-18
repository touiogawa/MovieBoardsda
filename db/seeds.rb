#映画タグ
Tag.create([
    { name: 'アクション映画' },
    { name: 'SF映画' },
    { name: 'コメディ映画'},
    { name: 'サスペンス映画'},
    { name: '時代劇映画'},
    { name: '児童映画'},
    { name: 'スリラー映画'},
    { name: '探偵映画'},
    { name: 'スペクタル（戦争）映画'},
    { name: '青春映画'},
    { name: 'ノスタルジー映画'},
    { name: '西部劇映画'},
    { name: 'パニック映画'},
    { name: 'ファミリー映画'},
    { name: 'プロパガンダ映画'},
    { name: '音楽映画'},
    { name: '恋愛映画'},
    { name: '連続活劇'},
    { name: '剣戟映画'},
    { name: 'ロードムービー'},
    { name: 'バディムービー'},
    { name: '成人映画'},
    ])

Admin.create!(email: 'touiogawa@gmail.com', password: 'Toui1129')

Customer.create!(name: "Exaple Customer",
             email: "example@railstutorial.org",
             password:                 "foobar",
             password_confirmation:    "foobar",
             admin: true )