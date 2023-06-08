module.exports = function(sequelize, dataTypes){
    let alias = "Entrega";
    
        let cols = {
            id: {
                type: dataTypes.INTEGER,
                primaryKey: true,
                autoIncrement : true
            },
            nombre: {
                type: dataTypes.STRING
            },
            descripcion: {
                type: dataTypes.STRING
            },
            superficie:{
                type: dataTypes.INTEGER
            },
            ubicacion: {
                type: dataTypes.STRING
            },
            video:{
                type: dataTypes.STRING
            },
            imagen: {
                type: dataTypes.STRING 
            },
            modelo_id:{
                type: dataTypes.INTEGER
            },
        }
        
        let config = {
            tableName: "entrega",
            timestamps: true, // es true ya que la tabla se llama igual que el modelo
            underscored: true  // permite que se utilice el created_at y updated_at con guion bajo
        }
    
        let Entrega = sequelize.define(alias,cols,config); 
    
        Entrega.associate = function(models){
            Entrega.belongsTo(models.Modelo, {   // la entrega tiene un unico modelo
                as: "Modelo",
                foreignKey: "modelo_id"
            })            
        };

        return Entrega
    }