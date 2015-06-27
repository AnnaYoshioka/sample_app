class AddRememberTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :remember_token, :string
    add_index  :users, :remember_token
  end
end

#http://shonoooo.hatenablog.com/entry/2014/10/06/124950
#$ bundle exec rake db:migrate $ bundle exec rake test:prepare $ bundle exec rspec spec/models/user_spec.rb

#$ bundle exec rake test:prepare を実行した時点で

#rake aborted!

#Don't know how to build task 'test:prepare'

#(See full trace by running task with --trace)

#というエラーがでました、rails 4.1.0.からbundle exec rake test:prepareは使えないみたいです。

#$ bundle exec rake test:prepare のかわりに $ bundle exec rake db:migrate RAILS_ENV=test にしてあげれば良さそう

#または、最初に $ bundle exec rake db:create:all を実行すれば良いらしい。 そうすると developer, test, productionのdbを起動するらしいです

