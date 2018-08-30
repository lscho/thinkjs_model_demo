module.exports = class extends think.Controller {

	async indexAction() {
		const student=await this.model('student').where({id:1}).find();
		return this.success(student);
	}

	async relationAction(){
		let student=await this.model('student').setRelation('class').where({id:2}).find();
		return this.success(student);
	}
}