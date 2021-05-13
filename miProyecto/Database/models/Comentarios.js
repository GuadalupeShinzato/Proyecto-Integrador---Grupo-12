module.exports = (sequelize, dataTypes) => {
    const Comments = sequelize.define('Comentarios', {
        id:{
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER
        },
        comment:{
            type: dataTypes.STRING
        },
        fecha_comment:{
            type: dataTypes.DATE
        },
        products_id:{
            type: dataTypes.INTEGER
        },
        users_id:{
            type: dataTypes.INTEGER
        },
    }, {
        tableName: "comments",
        timestamps: false

    });

    return Comments ;
}