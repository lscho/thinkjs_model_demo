module.exports = class extends think.Model {
	get relation() {
	    return {
	    	// 简单关联
	    	student_info: think.Model.HAS_ONE,
	    	// 自定义关联
	    	info:{
	    		type:think.Model.HAS_ONE,
	    		model:'student_info',
	    		fKey:'student_id'
	    	},
      		class: {
      			type:think.Model.BELONG_TO,
      			relation:false
      		},
      		club:{
		        type: think.Model.MANY_TO_MANY,
		        rModel: 'student_club',
		        rfKey: 'club_id'
      		}
	    }
	}
};