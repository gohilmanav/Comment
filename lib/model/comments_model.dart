class commentmodel {

  int? id;
  String? name;
  String? email;
  String? body;

  commentmodel({ this.id, this.name, this.email, this.body});

  commentmodel.fromJson(Map<String, dynamic> json) {
   
    id = json['id'];
    name = json['name'];
    email = json['email'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['body'] = this.body;
    return data;
  }
}