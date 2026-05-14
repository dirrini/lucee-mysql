component {

    this.name = "LuceeMySQLApp_v2";
    this.applicationTimeout = createTimeSpan(0,1,0,0);
    // Define qual será o datasource padrão do app
    this.datasource = "mydb";

    this.datasources = {
        "mydb" = {
            class: "com.mysql.cj.jdbc.Driver", // Driver moderno para MySQL
            bundleName: "com.mysql.cj",        // Opcional, ajuda o Lucee a localizar o bundle OSGi
            connectionString: "jdbc:mysql://db:3306/luceeapp?useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC",
            username: "root",
            password: "password",
            custom: { useUnicode: true, characterEncoding: "UTF-8" }
            // Alternativamente, você pode usar os campos separados, 
            // mas a connectionString é mais garantida:
            /*
            host: "db",
            port: 3306,
            database: "luceeapp",
            dbdriver: "mysql" 
            */
        }
    };

}