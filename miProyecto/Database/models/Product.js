module.exports = (sequelize, dataTypes) => {
    const Product = sequelize.define('Product', {   //Un alias que identifica al modelo
        id: {   //Un objeto con la configuración de las columnas en la base de datos
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER
        },
        title: {
            type: dataTypes.STRING
        },
        author: {
            type: dataTypes.STRING
        },
        cover: {
            type: dataTypes.STRING
        },
        description: {
            type: dataTypes.STRING
        },
        users_id: {
            type: dataTypes.INTEGER
        },
        createdAt: {
            type: dataTypes.DATE,
            field: "created_at"
        },
        updatedAt: {
            type: dataTypes.DATE,
            field: "updated_at"
        },
    }, {
        tableName: "products",   //Un objeto donde especificamos el nombre de la tabla

    });

    Product.associate = (db) => {
        Product.belongsTo(db.User, { //Product pertenece a User
            as: "usuario",
            foreignKey: "users_id"
        });
        Product.hasMany(db.Comment, { //Product tiene muchos Comment
            as: "comentarios",
            foreignKey: "products_id"
        });
        //Cada vez que hacemos un .belongsTo o .hasMany en un modelo, es necesario hacer su contraparte en el otro modelo correspondiente
    }


    return Product;  //Como dijimos que es una función, el return nos devuelve los parámetros de la misma
}