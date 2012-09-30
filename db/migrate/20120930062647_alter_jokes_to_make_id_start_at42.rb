class AlterJokesToMakeIdStartAt42 < ActiveRecord::Migration
  def up
    ActiveRecord::Base.connection.execute("ALTER SEQUENCE jokes_id_seq RESTART WITH 42")
  end

  def down
  end
end
