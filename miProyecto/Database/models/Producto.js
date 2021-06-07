module.exports = (sequelize, dataTypes) => {
    const Libros = sequelize.define('Libros', {
        id:{
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER
        },
        title:{
            type: dataTypes.STRING
        },
        author:{
            type: dataTypes.STRING
        },
        cover:{
            type: dataTypes.STRING
        },
        publicacion:{
            type: dataTypes.DATE
        },
        description:{
            type: dataTypes.STRING
        },
        users_id:{
            type: dataTypes.INTEGER
        },
    }, {
        tableName: "products",
        timestamps: false

    });

    return Libros ;
}