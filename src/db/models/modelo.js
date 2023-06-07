module.exports = function(sequelize, dataTypes){
    let alias = "Modelo";
    
        let cols = {
            id: {
                type: dataTypes.INTEGER,
                primaryKey: true,
                autoIncrement : true
            },
            nombre: {
                type: dataTypes.STRING
            },
        }
        
        let config = {
            tableName: "modelo",
            timestamps: true, // es true ya que la tabla se llama igual que el modelo
            underscored: true  // permite que se utilice el created_at y updated_at con guion bajo
        }
    
        let Modelo = sequelize.define(alias,cols,config); 
    
        Modelo.associate = function(models){
            Modelo.hasMany(models.Entrega, {   // el modelo tiene muchas entregas
                as: "Entrega",
                foreignKey: "modelo_id"
            })            
        };

        return Modelo
    }