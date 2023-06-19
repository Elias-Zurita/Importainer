module.exports = function(sequelize, dataTypes){
    let alias = "Categoria";
    
        let cols = {
            id: {
                type: dataTypes.INTEGER,
                primaryKey: true,
                autoIncrement : true
            },
            nombre: {
                type: dataTypes.STRING
            },
            slug: {
                type: dataTypes.STRING // se utiliza para usar como url el nombre que se le asigna
            }
        }
        
        let config = {
            tableName: "categoria",
            timestamps: true, // es true ya que la tabla se llama igual que el modelo
            underscored: true  // permite que se utilice el created_at y updated_at con guion bajo
        }
    
        let Categoria = sequelize.define(alias,cols,config); 
    
        Categoria.associate = function(models){
            Categoria.hasMany(models.Proyecto, {   // la categoria tiene muchos proyectos
                as: "Proyecto",
                foreignKey: "categoria_id"
            })            
        };

        return Categoria
    }