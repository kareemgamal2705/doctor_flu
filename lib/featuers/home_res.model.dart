class HomeResModel {
  final String? message;
  final List<SpecializationData>? data;
  final bool? status;
  final int? code;

  HomeResModel({this.message, this.data, this.status, this.code});

  factory HomeResModel.fromJson(Map<String, dynamic> json) {
    return HomeResModel(
      message: json['message'],
      status: json['status'],
      code: json['code'],
      data: json['data'] != null
          ? (json['data'] as List)
                .map((i) => SpecializationData.fromJson(i))
                .toList()
          : null,
    );
  }
}

class SpecializationData {
  final int? id;
  final String? name;
  final List<DoctorModel>? doctors;

  SpecializationData({this.id, this.name, this.doctors});

  factory SpecializationData.fromJson(Map<String, dynamic> json) {
    return SpecializationData(
      id: json['id'],
      name: json['name'],
      doctors: json['doctors'] != null
          ? (json['doctors'] as List)
                .map((i) => DoctorModel.fromJson(i))
                .toList()
          : null,
    );
  }
}

class DoctorModel {
  final int? id;
  final String? name;
  final String? email;
  final String? phone;
  final String? photo;
  final String? gender;
  final String? degree;
  final int? appointPrice;
  final String? startTime;
  final String? endTime;
  final SpecializationData? specialization;

  DoctorModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.degree,
    this.appointPrice,
    this.startTime,
    this.endTime,
    this.specialization,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      photo: json['photo'],
      gender: json['gender'],
      degree: json['degree'],
      appointPrice: json['appoint_price'],
      startTime: json['start_time'],
      endTime: json['end_time'],
      specialization: json['specialization'] != null
          ? SpecializationData.fromJson(json['specialization'])
          : null,
    );
  }
}
