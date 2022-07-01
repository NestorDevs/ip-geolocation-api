class GeolocationData {
  GeolocationData({
    required this.status,
    required this.country,
    required this.countryCode,
    required this.region,
    required this.regionName,
    required this.city,
    required this.zip,
    required this.lat,
    required this.lon,
    required this.timezone,
    required this.isp,
    required this.org,
    required this.as,
    required this.ip,
  });
  late final String status;
  late final String country;
  late final String countryCode;
  late final String region;
  late final String regionName;
  late final String city;
  late final String zip;
  late final double lat;
  late final double lon;
  late final String timezone;
  late final String isp;
  late final String org;
  late final String as;
  late final String ip;

  GeolocationData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    country = json['country'];
    countryCode = json['countryCode'];
    region = json['region'];
    regionName = json['regionName'];
    city = json['city'];
    zip = json['zip'];
    lat = json['lat'];
    lon = json['lon'];
    timezone = json['timezone'];
    isp = json['isp'];
    org = json['org'];
    as = json['as'];
    ip = json['query'];
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'country': country,
      'countryCode': countryCode,
      'region': region,
      'regionName': regionName,
      'city': city,
      'zip': zip,
      'lat': lat,
      'lon': lon,
      'timezone': timezone,
      'isp': isp,
      'org': org,
      'as': as,
      'ip': ip,
    };
  }
  // final data = <String, dynamic>{};
  // data['status'] = status;
  // data['country'] = country;
  // data['countryCode'] = countryCode;
  // data['region'] = region;
  // data['regionName'] = regionName;
  // data['city'] = city;
  // data['zip'] = zip;
  // data['lat'] = lat;
  // data['lon'] = lon;
  // data['timezone'] = timezone;
  // data['isp'] = isp;
  // data['org'] = org;
  // data['as'] = as;
  // data['query'] = ip;
  // return data;
}
