require('pg')

def run_sql( sql )
  begin
    db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
    result = db.exec( sql )
  ensure
    db.close
  end
  return result
end