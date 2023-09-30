// To parse this JSON data, do
//
//     final timingsModel = timingsModelFromJson(jsonString);

import 'dart:convert';

TimingsModel timingsModelFromJson(String str) => TimingsModel.fromJson(json.decode(str));

String timingsModelToJson(TimingsModel data) => json.encode(data.toJson());

class TimingsModel {
  int? code;
  String? status;
  Data? data;

  TimingsModel({
    this.code,
    this.status,
    this.data,
  });

  factory TimingsModel.fromJson(Map<String, dynamic> json) => TimingsModel(
    code: json["code"],
    status: json["status"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "status": status,
    "data": data!.toJson(),
  };
}

class Data {
  Timings? timings;
  Date? date;
  Meta? meta;

  Data({
    this.timings,
    this.date,
    this.meta,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    timings: Timings.fromJson(json["timings"]),
    date: Date.fromJson(json["date"]),
    meta: Meta.fromJson(json["meta"]),
  );

  Map<String, dynamic> toJson() => {
    "timings": timings!.toJson(),
    "date": date!.toJson(),
    "meta": meta!.toJson(),
  };
}

class Date {
  String? readable;
  String? timestamp;
  Hijri? hijri;
  Gregorian? gregorian;

  Date({
    this.readable,
    this.timestamp,
    this.hijri,
    this.gregorian,
  });

  factory Date.fromJson(Map<String, dynamic> json) => Date(
    readable: json["readable"],
    timestamp: json["timestamp"],
    hijri: Hijri.fromJson(json["hijri"]),
    gregorian: Gregorian.fromJson(json["gregorian"]),
  );

  Map<String, dynamic> toJson() => {
    "readable": readable,
    "timestamp": timestamp,
    "hijri": hijri!.toJson(),
    "gregorian": gregorian!.toJson(),
  };
}

class Gregorian {
  String? date;
  String? format;
  String? day;
  GregorianWeekday? weekday;
  GregorianMonth? month;
  String? year;
  Designation? designation;

  Gregorian({
    this.date,
    this.format,
    this.day,
    this.weekday,
    this.month,
    this.year,
    this.designation,
  });

  factory Gregorian.fromJson(Map<String, dynamic> json) => Gregorian(
    date: json["date"],
    format: json["format"],
    day: json["day"],
    weekday: GregorianWeekday.fromJson(json["weekday"]),
    month: GregorianMonth.fromJson(json["month"]),
    year: json["year"],
    designation: Designation.fromJson(json["designation"]),
  );

  Map<String, dynamic> toJson() => {
    "date": date,
    "format": format,
    "day": day,
    "weekday": weekday!.toJson(),
    "month": month!.toJson(),
    "year": year,
    "designation": designation!.toJson(),
  };
}

class Designation {
  String? abbreviated;
  String? expanded;

  Designation({
    this.abbreviated,
    this.expanded,
  });

  factory Designation.fromJson(Map<String, dynamic> json) => Designation(
    abbreviated: json["abbreviated"],
    expanded: json["expanded"],
  );

  Map<String, dynamic> toJson() => {
    "abbreviated": abbreviated,
    "expanded": expanded,
  };
}

class GregorianMonth {
  int? number;
  String? en;

  GregorianMonth({
    this.number,
    this.en,
  });

  factory GregorianMonth.fromJson(Map<String, dynamic> json) => GregorianMonth(
    number: json["number"],
    en: json["en"],
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "en": en,
  };
}

class GregorianWeekday {
  String? en;

  GregorianWeekday({
    this.en,
  });

  factory GregorianWeekday.fromJson(Map<String, dynamic> json) => GregorianWeekday(
    en: json["en"],
  );

  Map<String, dynamic> toJson() => {
    "en": en,
  };
}

class Hijri {
  String? date;
  String? format;
  String? day;
  HijriWeekday? weekday;
  HijriMonth? month;
  String? year;
  Designation? designation;
  List<dynamic>? holidays;

  Hijri({
    this.date,
    this.format,
    this.day,
    this.weekday,
    this.month,
    this.year,
    this.designation,
    this.holidays,
  });

  factory Hijri.fromJson(Map<String, dynamic> json) => Hijri(
    date: json["date"],
    format: json["format"],
    day: json["day"],
    weekday: HijriWeekday.fromJson(json["weekday"]),
    month: HijriMonth.fromJson(json["month"]),
    year: json["year"],
    designation: Designation.fromJson(json["designation"]),
    holidays: List<dynamic>.from(json["holidays"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "date": date,
    "format": format,
    "day": day,
    "weekday": weekday!.toJson(),
    "month": month!.toJson(),
    "year": year,
    "designation": designation!.toJson(),
    "holidays": List<dynamic>.from(holidays!.map((x) => x)),
  };
}

class HijriMonth {
  int? number;
  String? en;
  String? ar;

  HijriMonth({
    this.number,
    this.en,
    this.ar,
  });

  factory HijriMonth.fromJson(Map<String, dynamic> json) => HijriMonth(
    number: json["number"],
    en: json["en"],
    ar: json["ar"],
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "en": en,
    "ar": ar,
  };
}

class HijriWeekday {
  String? en;
  String? ar;

  HijriWeekday({
    this.en,
    this.ar,
  });

  factory HijriWeekday.fromJson(Map<String, dynamic> json) => HijriWeekday(
    en: json["en"],
    ar: json["ar"],
  );

  Map<String, dynamic> toJson() => {
    "en": en,
    "ar": ar,
  };
}

class Meta {
  double? latitude;
  double? longitude;
  String? timezone;
  Method? method;
  String? latitudeAdjustmentMethod;
  String? midnightMode;
  String? school;
  Map<String, int>?offset;

  Meta({
    this.latitude,
    this.longitude,
    this.timezone,
    this.method,
    this.latitudeAdjustmentMethod,
    this.midnightMode,
    this.school,
    this.offset,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    latitude: json["latitude"].toDouble(),
    longitude: json["longitude"].toDouble(),
    timezone: json["timezone"],
    method: Method.fromJson(json["method"]),
    latitudeAdjustmentMethod: json["latitudeAdjustmentMethod"],
    midnightMode: json["midnightMode"],
    school: json["school"],
    offset: Map.from(json["offset"]).map((k, v) => MapEntry<String, int>(k, v)),
  );

  Map<String, dynamic> toJson() => {
    "latitude": latitude,
    "longitude": longitude,
    "timezone": timezone,
    "method": method!.toJson(),
    "latitudeAdjustmentMethod": latitudeAdjustmentMethod,
    "midnightMode": midnightMode,
    "school": school,
    "offset": Map.from(offset!).map((k, v) => MapEntry<String, dynamic>(k, v)),
  };
}

class Method {
  int? id;
  String? name;
  Params? params;
  Location? location;

  Method({
    this.id,
    this.name,
    this.params,
    this.location,
  });

  factory Method.fromJson(Map<String, dynamic> json) => Method(
    id: json["id"],
    name: json["name"],
    params: Params.fromJson(json["params"]),
    location: Location.fromJson(json["location"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "params": params!.toJson(),
    "location": location!.toJson(),
  };
}

class Location {
  double? latitude;
  double? longitude;

  Location({
    this.latitude,
    this.longitude,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    latitude: json["latitude"].toDouble(),
    longitude: json["longitude"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "latitude": latitude,
    "longitude": longitude,
  };
}

class Params {
  double? fajr;
  String? isha;

  Params({
    this.fajr,
    this.isha,
  });

  factory Params.fromJson(Map<String, dynamic> json) => Params(
    fajr: json["Fajr"].toDouble(),
    isha: json["Isha"],
  );

  Map<String, dynamic> toJson() => {
    "Fajr": fajr,
    "Isha": isha,
  };
}

class Timings {
  String? fajr;
  String? sunrise;
  String? dhuhr;
  String? asr;
  String? sunset;
  String? maghrib;
  String? isha;
  String? imsak;
  String? midnight;
  String? firstthird;
  String? lastthird;

  Timings({
    this.fajr,
    this.sunrise,
    this.dhuhr,
    this.asr,
    this.sunset,
    this.maghrib,
    this.isha,
    this.imsak,
    this.midnight,
    this.firstthird,
    this.lastthird,
  });

  factory Timings.fromJson(Map<String, dynamic> json) => Timings(
    fajr: json["Fajr"],
    sunrise: json["Sunrise"],
    dhuhr: json["Dhuhr"],
    asr: json["Asr"],
    sunset: json["Sunset"],
    maghrib: json["Maghrib"],
    isha: json["Isha"],
    imsak: json["Imsak"],
    midnight: json["Midnight"],
    firstthird: json["Firstthird"],
    lastthird: json["Lastthird"],
  );

  Map<String, dynamic> toJson() => {
    "Fajr": fajr,
    "Sunrise": sunrise,
    "Dhuhr": dhuhr,
    "Asr": asr,
    "Sunset": sunset,
    "Maghrib": maghrib,
    "Isha": isha,
    "Imsak": imsak,
    "Midnight": midnight,
    "Firstthird": firstthird,
    "Lastthird": lastthird,
  };
}
