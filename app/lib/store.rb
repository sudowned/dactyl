class Store
	def self.up do
		@@dbfile = 'store.db'
		@@data = SQLite::Database.new( self.dbfile, 0644 ) 
		data.execute <<SQL
			CREATE TABLE sites (
				idx INTEGER PRIMARY KEY;
				url VARCHAR(255)
  			);
 		SQL
	end


	self.down do
		FileUtils.rm(self.dbfile)
	end
end
