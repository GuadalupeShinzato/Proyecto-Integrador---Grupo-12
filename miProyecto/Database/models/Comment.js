module.exports = (sequelize, dataTypes) => {
    const Comment = sequelize.define('Comment', {
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
        createdAt:{
            type: dataTypes.DATE,
            field:"created_at"
        },
        updatedAt:{
            type: dataTypes.DATE,
            field: "updated_at"
        },
    }, {
        tableName: "comments",

    });

    Comment.associate=(db)=>{
        Comment.belongsTo(db.Product,{
            as:"producto",
            foreignKey:"products_id"
        });
        Comment.belongsTo(db.User,{
            as:"usuario",
            foreignKey:"users_id"
        });

    } 

    return Comment;
}