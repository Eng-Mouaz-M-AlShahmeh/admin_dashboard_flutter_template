/* Developed by Eng Mouaz M AlShahmeh */
class SliderModel {
  String? image;
  String? text;
  String? altText;
  String? bAltText;
  String? productImage;
  int? kBackgroundColor;

  SliderModel(this.image, this.text, this.altText, this.bAltText,
      this.productImage, this.kBackgroundColor);

  SliderModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    kBackgroundColor = json['kBackgroundColor'];
    text = json['text'];
    altText = json['altText'];
    bAltText = json['bAltText'];
    productImage = json['productImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['kBackgroundColor'] = kBackgroundColor;
    data['text'] = text;
    data['altText'] = altText;
    data['bAltText'] = bAltText;
    data['productImage'] = productImage;
    return data;
  }
}

List<SliderModel> slides =
    slideData.map((item) => SliderModel.fromJson(item)).toList();

var slideData = [
  {
    "image": "assets/slides/background-1.jpeg",
    "kBackgroundColor": 0xFF2c614f,
    "text": "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة!",
    "altText": "لقد تم توليد هذا النص من مولد النص العربى.",
    "bAltText": "حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق!",
    "productImage": "assets/images/mockup.png"
  },
  {
    "image": "assets/slides/background-2.jpeg",
    "kBackgroundColor": 0xFF8a1a4c,
    "text": "لقد تم توليد هذا النص من مولد النص العربى!",
    "altText": "إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد.",
    "bAltText":
        "مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص!",
    "productImage": "assets/images/mockup-2.png"
  },
  {
    "image": "assets/slides/background-3.jpeg",
    "kBackgroundColor": 0xFF0ab3ec,
    "text": "هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ",
    "altText":
        "حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع",
    "bAltText":
        "ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً",
    "productImage": "assets/images/mockup-3.png"
  }
];
