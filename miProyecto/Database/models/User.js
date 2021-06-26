module.exports = (sequelize, dataTypes) => {
    const User = sequelize.define('User', {
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER
        },
        name: {
            type: dataTypes.STRING
        },
        last_name: {
            type: dataTypes.STRING
        },
        email: {
            type: dataTypes.STRING
        },
        nacimiento: {
            type: dataTypes.DATE
        },
        username: {
            type: dataTypes.STRING
        },
        password: {
            type: dataTypes.STRING
        },
        cover: {
            type: dataTypes.STRING
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
        tableName: "users",
    });

    User.associate = (db) => {
        User.hasMany(db.Product, {
            as: "productos",
            foreignKey: "users_id"
        });
        User.hasMany(db.Comment, {
            as: "comentarios",
            foreignKey: "users_id"
        });

    }

    return User;
}