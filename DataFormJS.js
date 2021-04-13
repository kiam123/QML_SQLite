function cargaInformation() {
    // listview顯示資料
    db.transaction(function(tx) {
        var sql = 'SELECT * FROM persona';
        var rs = tx.executeSql(sql);
        var myId;
        var myNombre;
        var myEdad;
        var ix;

        for(ix = 0; ix < rs.rows.length; ++ix) {
            myId = rs.rows.item(ix).id;
            myNombre = rs.rows.item(ix).nombre;
            myEdad = rs.rows.item(ix).edad;
            personalListView.model.append({
                id: myId,
                nombre: myNombre,
                edad: myEdad
            });
        }
    });
}
