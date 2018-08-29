const Base = require('./base.js');

module.exports = class extends Base {
  async indexAction() {
  	let student=await this.model('student').where({id:1}).find();

  	let classes=await this.model('class').where({id:1}).find();

  	let club=await this.model('club').where({id:1}).find();
  	let data={student,classes,club};
  	return this.json(classes);
  }
};
