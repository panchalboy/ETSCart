class ShoppingCardModel{
  String _productImage;
  String _productName;
  String _productSubTitle;
  int _productQty;
  double _productPrice;

  ShoppingCardModel(this._productImage, this._productName,
      this._productSubTitle, this._productQty, this._productPrice);

  double get productPrice => _productPrice;

  set productPrice(double value) {
    _productPrice = value;
  }

  int get productQty => _productQty;

  set productQty(int value) {
    _productQty = value;
  }

  String get productSubTitle => _productSubTitle;

  set productSubTitle(String value) {
    _productSubTitle = value;
  }

  String get productName => _productName;

  set productName(String value) {
    _productName = value;
  }

  String get productImage => _productImage;

  set productImage(String value) {
    _productImage = value;
  }
}