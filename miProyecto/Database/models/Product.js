module.exports = (sequelize, dataTypes) => {
    const Product = sequelize.define('Product', {
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
        description:{
            type: dataTypes.STRING
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
            field:"updated_at"
        },
    }, {
        tableName: "products",

    });

    Product.associate=(db)=>{
        Product.belongsTo(db.User,{
            as:"usuario",
            foreignKey:"users_id"
        });
        Product.hasMany(db.Comment,{
            as:"comentarios",
            foreignKey:"products_id"
        });
    } 


    return Product ;
}