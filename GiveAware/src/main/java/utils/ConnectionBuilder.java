/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Praew
 */
public class ConnectionBuilder {

    public static Connection getConnection() {
        String mysqlDriver = "com.mysql.jdbc.Driver";
        Connection con = null;

        try {
            ClassLoader classloader = Thread.currentThread().getContextClassLoader();
            Properties prop = new Properties();
            InputStream input = classloader.getResourceAsStream("config.properties");
            prop.load(input);

            String DB_HOST = prop.getProperty("DB_HOST");
            String DB_PORT = prop.getProperty("DB_PORT");
            String DB_NAME = prop.getProperty("DB_NAME");
            String DB_USERNAME = prop.getProperty("DB_USERNAME");
            String DB_PASSWORD = prop.getProperty("DB_PASSWORD");

            String dbConnectionString = "jdbc:mysql://";
            dbConnectionString += DB_HOST
                    + ":"
                    + DB_PORT
                    + "/"
                    + DB_NAME
                    + "?"
                    + "useUnicode=true&characterEncoding=UTF-8"; //for reading Thai
            Class.forName(mysqlDriver);
            con = DriverManager.getConnection(dbConnectionString, DB_USERNAME, DB_PASSWORD);

        } catch (SQLException | ClassCastException | IOException | ClassNotFoundException err) { 
            System.out.println(err);
        }
        return con;
    }
}
