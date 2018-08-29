module.exports = class extends think.Model {
    get relation() {
        return {
            student:think.Model.HAS_MANY,
            list:{
            	type:think.Model.HAS_MANY,
            	model:'student',
            	fKey: 'class_id',
            	where:'id>0',
            	field:'id,name',
            	limit:10
            }
        }
    }
}