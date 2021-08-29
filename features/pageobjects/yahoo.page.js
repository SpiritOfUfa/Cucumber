class YahooSearch{
    open(){
        return browser.url('http://yahoo.com')
    }
    get inputSearch(){
        return $("#ybar-sbq");
    }
    get btnSearch(){
        return $('#ybar-search')
    }
    async search(phrase){
        await(await this.inputSearch).setValue(phrase)
        await browser.pause(1000);
        await(await this.btnSearch).click();
        await browser.pause(2000)
    }

}
export default new YahooSearch();