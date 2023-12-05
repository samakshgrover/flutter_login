class GetNomineeResponse {
  bool? isvalid;
  List<Nominees>? nominees;

  GetNomineeResponse({this.isvalid, this.nominees});

  GetNomineeResponse.fromJson(Map<String, dynamic> json) {
    isvalid = json['isvalid'];
    if (json['nominees'] != null) {
      nominees = <Nominees>[];
      json['nominees'].forEach((v) {
        nominees!.add(Nominees.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isvalid'] = isvalid;
    if (nominees != null) {
      data['nominees'] = nominees!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Nominees {
  int? id;
  String? name;
  String? relation;

  Nominees({this.id, this.name, this.relation});

  Nominees.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    relation = json['relation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['relation'] = relation;
    return data;
  }
}
