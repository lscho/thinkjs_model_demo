module.exports = class extends think.Controller {

	async indexAction() {
		const club=await this.model('club').where({id:1}).find();
		return this.success(club);
	}
}