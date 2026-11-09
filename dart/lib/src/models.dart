/// Response models for the Moon Phases API.

/// API Response wrapper.
class MoonphasesResponse {
  final String status;
  final dynamic error;
  final MoonphasesData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  MoonphasesResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory MoonphasesResponse.fromJson(Map<String, dynamic> json) => MoonphasesResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? MoonphasesData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Moon Phases API.

class MoonphasesData {
  String? date;
  String? phase;
  String? phaseEmoji;
  num? illumination;
  bool? waxing;
  bool? waning;
  num? lunarAge;
  num? lunarAgePercent;
  num? lunationNumber;
  num? lunarDistance;
  String? nextFullMoon;
  String? lastFullMoon;
  num? daysToFullMoon;
  num? daysSinceFullMoon;
  num? lunarDistanceKm;
  String? nextPhase;
  String? nextPhaseDate;
  num? daysToNextPhase;
  String? nextNewMoon;
  String? lastNewMoon;
  num? daysToNewMoon;
  num? daysSinceNewMoon;
  String? nextFirstQuarter;
  String? nextLastQuarter;

  MoonphasesData({
    this.date,
    this.phase,
    this.phaseEmoji,
    this.illumination,
    this.waxing,
    this.waning,
    this.lunarAge,
    this.lunarAgePercent,
    this.lunationNumber,
    this.lunarDistance,
    this.nextFullMoon,
    this.lastFullMoon,
    this.daysToFullMoon,
    this.daysSinceFullMoon,
    this.lunarDistanceKm,
    this.nextPhase,
    this.nextPhaseDate,
    this.daysToNextPhase,
    this.nextNewMoon,
    this.lastNewMoon,
    this.daysToNewMoon,
    this.daysSinceNewMoon,
    this.nextFirstQuarter,
    this.nextLastQuarter,
  });

  factory MoonphasesData.fromJson(Map<String, dynamic> json) => MoonphasesData(
      date: json['date'],
      phase: json['phase'],
      phaseEmoji: json['phaseEmoji'],
      illumination: json['illumination'],
      waxing: json['waxing'],
      waning: json['waning'],
      lunarAge: json['lunarAge'],
      lunarAgePercent: json['lunarAgePercent'],
      lunationNumber: json['lunationNumber'],
      lunarDistance: json['lunarDistance'],
      nextFullMoon: json['nextFullMoon'],
      lastFullMoon: json['lastFullMoon'],
      daysToFullMoon: json['daysToFullMoon'],
      daysSinceFullMoon: json['daysSinceFullMoon'],
      lunarDistanceKm: json['lunarDistanceKm'],
      nextPhase: json['nextPhase'],
      nextPhaseDate: json['nextPhaseDate'],
      daysToNextPhase: json['daysToNextPhase'],
      nextNewMoon: json['nextNewMoon'],
      lastNewMoon: json['lastNewMoon'],
      daysToNewMoon: json['daysToNewMoon'],
      daysSinceNewMoon: json['daysSinceNewMoon'],
      nextFirstQuarter: json['nextFirstQuarter'],
      nextLastQuarter: json['nextLastQuarter'],
    );
}

class MoonphasesRequest {
  bool? today;
  bool? phases;

  MoonphasesRequest({
    this.today,
    this.phases,
  });

  Map<String, dynamic> toJson() => {
      if (today != null) 'today': today,
      if (phases != null) 'phases': phases,
    };
}
