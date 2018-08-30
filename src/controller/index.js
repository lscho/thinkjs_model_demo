module.exports = class extends think.Controller {

    async indexAction() {
        let classes = await this.model('class').where({ id: 1 }).find();
        return this.success(classes);
    }
};