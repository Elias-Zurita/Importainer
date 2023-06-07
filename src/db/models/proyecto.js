module.exports = function(sequelize, dataTypes){
    let alias = "Proyecto";
    
        let cols = {
            id: {
                type: dataTypes.INTEGER,
                primaryKey: true,
                autoIncrement : true
            },
            nombre: {
                type: dataTypes.STRING
            },
            precio: {
                type: dataTypes.INTEGER
            },
            descripcion: {
                type: dataTypes.STRING
            },
            superficie:{
                type: dataTypes.INTEGER
            },
            baños: {
                type: dataTypes.INTEGER 
            },
            ambientes: {
                type: dataTypes.INTEGER 
            },
            adhesion:{
                type: dataTypes.INTEGER
            },
            resumen:{
                type: dataTypes.STRING
            },
            detalle_baño:{
                type: dataTypes.STRING
            },
            cocina: {
                type: dataTypes.STRING 
            },
            aberturas:{
                type: dataTypes.STRING
            },
            revestimientos:{
                type: dataTypes.STRING
            },
            equipamiento:{
                type: dataTypes.STRING
            },
            instalacion_electrica: {
                type: dataTypes.STRING 
            },
            instalacion_agua:{
                type: dataTypes.STRING
            },
            tipos_de_pisos:{
                type: dataTypes.STRING
            },
            video:{
                type: dataTypes.STRING
            },
            imagenes: {
                type: dataTypes.STRING 
            },
            categoria_id:{
                type: dataTypes.INTEGER
            },
        }
        
        let config = {
            tableName: "proyecto",
            timestamps: true, // es true ya que la tabla se llama igual que el modelo
            underscored: true  // permite que se utilice el created_at y updated_at con guion bajo
        }
    
        let Proyecto = sequelize.define(alias,cols,config); 
    
        Proyecto.associate = function(models){
            Proyecto.belongsTo(models.Categoria, {   // el producto tiene una sola categoria
                as: "Categoria",
                foreignKey: "categoria_id"
            })            
        };

        return Proyecto
    }