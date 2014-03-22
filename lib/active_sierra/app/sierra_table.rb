class SierraTable < ActiveRecord::Base
	establish_connection(
		adapter: "postgresql",
		database: "iii",
		host: "sierra-db.libraries.uc.edu",
		port: "1032",
		schema_search_path: "sierra_view",
		pool: "5",
		timeout: "5000",
		username: "cdmsql",
		password: "g31b98",
		sslmode: "require"
	)
end