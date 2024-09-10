require "pg"

# クライアントの設定
client = PG::Connection.new(
  host: 'db',
  port: 5432,
  dbname: 'test_db',
  user: 'user',
  password: 'user_password'
)

begin
  # データベースから user の情報を取得
  result = client.exec_params('SELECT * FROM user');

  # 取得したデータを表示する
  result.each do |row|
    puts row
  end

  conn = null;
rescue => e
  puts '<p>メールの送信に失敗しました</p>'
end

