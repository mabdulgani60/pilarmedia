import {Sequelize} from "sequelize";

const db = new Sequelize('pilarmedia', 'root', '', {
    host: "localhost",
    dialect: "mysql"
});

export default db;