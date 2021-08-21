
class NotificationModel{
  String _title;
  String _subTitle;
  String _image;
  NotificationModel(this._title, this._subTitle,this._image);

  String get subTitle => _subTitle;

  set subTitle(String value) {
    _subTitle = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }
}