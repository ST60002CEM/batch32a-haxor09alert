import '../constants/constant_path.dart';

class _AssetsImagesGen {
  const _AssetsImagesGen();

  String get Logo => '$kImagesPath/Logo1.png';
  String get AppleLogo => '$kImagesPath/apple.png';
  String get GoogleLogo => '$kImagesPath/google.png';
  String get FacebookLogo => '$kImagesPath/facebook.png';
  String get EmergencyServices => '$kImagesPath/emergency .png';
  String get Notes => '$kImagesPath/notes.png';
  String get PhotoAlbums => '$kImagesPath/album.png';
  String get DigitalCalendar => '$kImagesPath/digitalcalendars.png';
  String get Woman => '$kImagesPath/woman.png';
  String get Accessory => '$kImagesPath/accessory.png';
  String get MensApperal => '$kImagesPath/men.jpeg';
  String get MensGrooming => '$kImagesPath/menproducts.jpeg';
  String get MensShoe => '$kImagesPath/mensho.jpg';
  String get MensAccessory => '$kImagesPath/mensAccessories.jpg';
  String get WomensApperal => '$kImagesPath/women.jpeg';
  String get WomensAccrssory => '$kImagesPath/women_accoriees.jpeg';
  String get WomensGrooming => '$kImagesPath/womenproduct.jpeg';
  String get WomensTraditional => '$kImagesPath/langas.jpg';
  String get WomensShoe => '$kImagesPath/womenshoe.jpg';
  String get KidsApperal => '$kImagesPath/kids.jpeg';
  String get kidsAccrssory => '$kImagesPath/kids_accessoey.jpg';
  String get kidsToys => '$kImagesPath/toys.jpg';
  String get kidsShoe => '$kImagesPath/kidsshoe.jpg';
}

class _AssetsSvgImagesGen {
  const _AssetsSvgImagesGen();

  String get back => '$kSvgImagesPath/long_back.svg';
  String get menu => '$kSvgImagesPath/menu.svg';
  String get wishlist => '$kSvgImagesPath/heart.svg';
  String get edit => '$kSvgImagesPath/edit.svg';
  String get myprofile => '$kSvgImagesPath/myprofile.svg';
  String get right_arrow => '$kSvgImagesPath/right_arrow.svg';
  String get privacy_policy => '$kSvgImagesPath/privacy_policy.svg';
  String get help_support => '$kSvgImagesPath/help_support.svg';
  String get unlock => '$kSvgImagesPath/unlock.svg';
  String get my_address => '$kSvgImagesPath/my_address.svg';
  String get order => '$kSvgImagesPath/order.svg';
  String get logout => '$kSvgImagesPath/logout.svg';
  String get wishlist2 => '$kSvgImagesPath/wishlist2.svg';
  String get share => '$kSvgImagesPath/share.svg';
  String get star => '$kSvgImagesPath/star.svg';
  String get chat => '$kSvgImagesPath/chat.svg';
  String get cart => '$kSvgImagesPath/cart.svg';
}

class Assets {
  Assets._();
  static const images = _AssetsImagesGen();
  static const svgImages = _AssetsSvgImagesGen();
}
