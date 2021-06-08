module.exports = (sequelize, dataTypes) => {
    const User = sequelize.define('User', {
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

    User.associate=(db)=>{
        User.hasMany(db.Product,{
            as:"productos",
            foreignKey:"users_id"
        });
        User.hasMany(db.Comment,{
            as:"comentarios",
            foreignKey:"users_id"
        });

    } 

    return User ;
}