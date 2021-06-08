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