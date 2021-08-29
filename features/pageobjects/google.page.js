class GoogleSearch {
  
    open () {
        return browser.url('https://google.com');  
    }
    get inputSearch(){
        return $('[title="Поиск"]');
    }
    get buttonSearch(){
        return $('[value="Поиск в Google"]');
    }
    async search (phrase) {
        await (await this.inputSearch).setValue(phrase);
        await browser.pause(5000)
        await (await this.buttonSearch).click();
    }
}
export default new GoogleSearch();
