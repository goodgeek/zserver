#include <sqlite3.h>
#include "database.h"

void Database::TestDB()
{
	sqlite3 *db = nullptr;

	sqlite3_open("test.db", &db);
	sqlite3_close(db);
}
