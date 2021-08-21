class HistoryModel{
  String _shopName;
  String _price;
  String _date;
  String _imageProductOne;
  String _ProductNameOne;
  String _imageProductTwo;
  String _ProductNameTwo;

  HistoryModel(this._shopName, this._price, this._date, this._imageProductOne,
      this._ProductNameOne, this._imageProductTwo, this._ProductNameTwo);

  String get ProductNameTwo => _ProductNameTwo;

  set ProductNameTwo(String value) {
    _ProductNameTwo = value;
  }

  String get imageProductTwo => _imageProductTwo;

  set imageProductTwo(String value) {
    _imageProductTwo = value;
  }

  String get ProductNameOne => _ProductNameOne;

  set ProductNameOne(String value) {
    _ProductNameOne = value;
  }

  String get imageProductOne => _imageProductOne;

  set imageProductOne(String value) {
    _imageProductOne = value;
  }

  String get date => _date;

  set date(String value) {
    _date = value;
  }

  String get price => _price;

  set price(String value) {
    _price = value;
  }

  String get shopName => _shopName;

  set shopName(String value) {
    _shopName = value;
  }
}