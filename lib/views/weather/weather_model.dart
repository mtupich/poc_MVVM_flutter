class WeatherModel {
  String? country;
  String? date;
  String? text;

  WeatherModel({this.country, this.date, this.text});

  WeatherModel.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    date = json['date'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    data['date'] = this.date;
    data['text'] = this.text;
    return data;
  }
}