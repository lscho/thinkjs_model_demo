module.exports = class extends think.Model {
    get relation() {
        return {
            student:{
            	type:think.Model.MANY_TO_MANY,
                rModel: 'student_club',
                rfKey: 'student_id',
                relation:false
            }
        }
    }
}