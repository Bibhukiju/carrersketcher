// To parse this JSON data, do
//
//     final pathWay = pathWayFromJson(jsonString);

import 'dart:convert';

PathWay pathWayFromJson(String str) => PathWay.fromJson(json.decode(str));

String pathWayToJson(PathWay data) => json.encode(data.toJson());

class PathWay {
  PathWay({
    this.afterTwelve,
  });

  AfterTwelve afterTwelve;

  factory PathWay.fromJson(Map<String, dynamic> json) => PathWay(
        afterTwelve: AfterTwelve.fromJson(json["afterTwelve"]),
      );

  Map<String, dynamic> toJson() => {
        "afterTwelve": afterTwelve.toJson(),
      };
}

class AfterTwelve {
  AfterTwelve({
    this.interestName,
  });

  InterestName interestName;

  factory AfterTwelve.fromJson(Map<String, dynamic> json) => AfterTwelve(
        interestName: InterestName.fromJson(json["interest_name"]),
      );

  Map<String, dynamic> toJson() => {
        "interest_name": interestName.toJson(),
      };
}

class InterestName {
  InterestName({
    this.engineer,
    this.doctor,
    this.itOfficer,
  });

  Doctor engineer;
  Doctor doctor;
  ItOfficer itOfficer;

  factory InterestName.fromJson(Map<String, dynamic> json) => InterestName(
        engineer: Doctor.fromJson(json["Engineer"]),
        doctor: Doctor.fromJson(json["Doctor"]),
        itOfficer: ItOfficer.fromJson(json["IT Officer"]),
      );

  Map<String, dynamic> toJson() => {
        "Engineer": engineer.toJson(),
        "Doctor": doctor.toJson(),
        "IT Officer": itOfficer.toJson(),
      };
}

class Doctor {
  Doctor({
    this.specialNotes,
    this.hasSubfields,
    this.subfields,
    this.entranceExams,
    this.competition,
    this.entranceInstitutes,
  });

  SpecialNotes specialNotes;
  String hasSubfields;
  Subfields subfields;
  String entranceExams;
  String competition;
  EntranceInstitutes entranceInstitutes;

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
        specialNotes: SpecialNotes.fromJson(json["special_notes"]),
        hasSubfields: json["has_subfields"],
        subfields: Subfields.fromJson(json["subfields"]),
        entranceExams: json["entrance_exams"],
        competition: json["competition"],
        entranceInstitutes:
            EntranceInstitutes.fromJson(json["entrance_institutes"]),
      );

  Map<String, dynamic> toJson() => {
        "special_notes": specialNotes.toJson(),
        "has_subfields": hasSubfields,
        "subfields": subfields.toJson(),
        "entrance_exams": entranceExams,
        "competition": competition,
        "entrance_institutes": entranceInstitutes.toJson(),
      };
}

class EntranceInstitutes {
  EntranceInstitutes({
    this.availableInstitues,
    this.startingPrice,
    this.institute1,
    this.institute2,
  });

  String availableInstitues;
  String startingPrice;
  Institute institute1;
  Institute institute2;

  factory EntranceInstitutes.fromJson(Map<String, dynamic> json) =>
      EntranceInstitutes(
        availableInstitues: json["available_institues"],
        startingPrice: json["starting_price"],
        institute1: Institute.fromJson(json["institute_1"]),
        institute2: Institute.fromJson(json["institute_2"]),
      );

  Map<String, dynamic> toJson() => {
        "available_institues": availableInstitues,
        "starting_price": startingPrice,
        "institute_1": institute1.toJson(),
        "institute_2": institute2.toJson(),
      };
}

class Institute {
  Institute({
    this.institueName,
    this.location,
    this.number,
    this.scholarships,
    this.additionalDetails,
  });

  String institueName;
  String location;
  String number;
  Scholarships scholarships;
  AdditionalDetails additionalDetails;

  factory Institute.fromJson(Map<String, dynamic> json) => Institute(
        institueName: json["institue_name"],
        location: json["location"],
        number: json["number"],
        scholarships: Scholarships.fromJson(json["scholarships"]),
        additionalDetails:
            AdditionalDetails.fromJson(json["additional_details"]),
      );

  Map<String, dynamic> toJson() => {
        "institue_name": institueName,
        "location": location,
        "number": number,
        "scholarships": scholarships.toJson(),
        "additional_details": additionalDetails.toJson(),
      };
}

class AdditionalDetails {
  AdditionalDetails({
    this.additionalCourses,
  });

  String additionalCourses;

  factory AdditionalDetails.fromJson(Map<String, dynamic> json) =>
      AdditionalDetails(
        additionalCourses: json["additional_courses"],
      );

  Map<String, dynamic> toJson() => {
        "additional_courses": additionalCourses,
      };
}

class Scholarships {
  Scholarships({
    this.available,
    this.criteria,
  });

  String available;
  String criteria;

  factory Scholarships.fromJson(Map<String, dynamic> json) => Scholarships(
        available: json["available"],
        criteria: json["criteria"],
      );

  Map<String, dynamic> toJson() => {
        "available": available,
        "criteria": criteria,
      };
}

class SpecialNotes {
  SpecialNotes({
    this.noteTitle,
  });

  String noteTitle;

  factory SpecialNotes.fromJson(Map<String, dynamic> json) => SpecialNotes(
        noteTitle: json["note_title"],
      );

  Map<String, dynamic> toJson() => {
        "note_title": noteTitle,
      };
}

class Subfields {
  Subfields({
    this.subfield1,
    this.subfield2,
    this.subfield3,
    this.subfield4,
  });

  String subfield1;
  String subfield2;
  String subfield3;
  String subfield4;

  factory Subfields.fromJson(Map<String, dynamic> json) => Subfields(
        subfield1: json["subfield_1"],
        subfield2: json["subfield_2"],
        subfield3: json["subfield_3"],
        subfield4: json["subfield_4"],
      );

  Map<String, dynamic> toJson() => {
        "subfield_1": subfield1,
        "subfield_2": subfield2,
        "subfield_3": subfield3,
        "subfield_4": subfield4,
      };
}

class ItOfficer {
  ItOfficer({
    this.specialNotes,
    this.hasSubfields,
    this.entranceExams,
    this.competition,
  });

  SpecialNotes specialNotes;
  String hasSubfields;
  String entranceExams;
  String competition;

  factory ItOfficer.fromJson(Map<String, dynamic> json) => ItOfficer(
        specialNotes: SpecialNotes.fromJson(json["special_notes"]),
        hasSubfields: json["has_subfields"],
        entranceExams: json["entrance_exams"],
        competition: json["competition"],
      );

  Map<String, dynamic> toJson() => {
        "special_notes": specialNotes.toJson(),
        "has_subfields": hasSubfields,
        "entrance_exams": entranceExams,
        "competition": competition,
      };
}
