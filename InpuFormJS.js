function guardaInformation() {
    var nombre = nombreTextField.text;
    var edad = edadTextField.text;

    // 插入資料
    db.transaction(function(tx) {
        var sql = 'INSERT INTO persona (nombre, edad) VALUES (\''
                + nombre + '\',' + edad + ')';
        tx.executeSql(sql);
    });

    stackView.push(dataForm);
}
