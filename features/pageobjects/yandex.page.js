class YandexSearch {
  open() {
    return browser.url("https://yandex.ru/");
  }
  get inputSearch() {
    return $("#text");
  }
  get btnSearch() {
    return $('[class="search2__button"]');
  }
  async search(phrase) {
    await (await this.inputSearch).setValue(phrase);
    await browser.pause(2000);
    await (await this.btnSearch).click();
  }
}
export default new YandexSearch();
