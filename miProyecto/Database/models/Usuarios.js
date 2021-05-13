module.exports = (sequelize, dataTypes) => {
    const Usuario = sequelize.define('Usuarios', {
        id:{
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER
        },
        name:{
            type: dataTypes.STRING
        },
        last_name:{
            type: dataTypes.STRING
        },
        email:{
            type: dataTypes.STRING
        },
        nacimiento:{
            type: dataTypes.DATE
        },
        username:{
            type: dataTypes.STRING
        },
        password:{
            type: dataTypes.STRING
        },
    }, {
        tableName: "users",
        timestamps: false

    });

    return Usuario ;
}