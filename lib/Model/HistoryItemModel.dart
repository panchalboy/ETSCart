class HistoryItemModel{
  String _imageProduct;
  String _ProductName;
  int _price;
  int _qty;


  HistoryItemModel(
      this._imageProduct, this._ProductName, this._price, this._qty);

  String get ProductName => _ProductName;

  set ProductName(String value) {
    _ProductName = value;
  }

  String get imageProduct => _imageProduct;

  set imageProduct(String value) {
    _imageProduct = value;
  }

  int get qty => _qty;

  set qty(int value) {
    _qty = value;
  }

  int get price => _price;

  set price(int value) {
    _price = value;
  }
}