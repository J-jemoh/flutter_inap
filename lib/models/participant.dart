class Participantdata {
  int id;
  String study_id,
      participant_name,
      upn,
      age,
      gender,
      study_site,
      participant_nickname,
      caregiver_name,
      caregiver_contact_phone,
      caregiver_alt_phone,
      relationship_with_participant,
      location,
      location_description,
      barrier_category,
      barriers;

  Participantdata(
      {required this.id,
      required this.study_id,
      required this.participant_name,
      required this.upn,
      required this.age,
      required this.gender,
      required this.study_site,
      required this.participant_nickname,
      required this.caregiver_name,
      required this.caregiver_contact_phone,
      required this.caregiver_alt_phone,
      required this.relationship_with_participant,
      required this.location,
      required this.location_description,
      required this.barrier_category,
      required this.barriers});

  factory Participantdata.fromJson(Map<String, dynamic> json) {
    return Participantdata(
      id: json['id'],
      study_id: json['study_id'],
      participant_name: json['participant_name'],
      upn: json['UPN'],
      age: json['age'],
      gender: json['gender'],
      study_site: json['study_site'],
      participant_nickname: json['participant_nickname'],
      caregiver_name: json['caregiver_name'],
      caregiver_contact_phone: json['caregiver_contact_phone'],
      caregiver_alt_phone: json['caregiver_alt_phone'],
      relationship_with_participant: json['relationship_with_participant'],
      location: json['location'],
      location_description: json['location_description'],
      barrier_category: json['barrier_category'],
      barriers: json['barriers'],
    );
  }
}
