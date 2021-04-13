function ejecutaConfigurationInicial() {
    // 建資料庫
    db = LocalStorage.openDatabaseSync(dbId, dbVersion, dbDescription, dbSize);

    db.transaction(function(tx) {
        var sql = 'CREATE TABLE IF NOT EXISTS persona '
                + '(id INTEGER PRIMARY KEY AUTOINCREMENT, '
                + 'nombre TEXT NOT NULL, edad INTEGER NOT NULL)';
//        tx.executeSql(sql);
        console.log('tx.executeSql(sql): ', JSON.stringify(tx.executeSql(sql)))
    });
}
