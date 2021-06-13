class Appointments {
  String _firstName="";
  String _age="";
  String _sex="";
  String _lastVisit="";
  String _appointmentDate="";
  String _appointmentTime="";
  String _paymentStatus="";
  String _confirmationStatus="";

  Appointments(
      {required String firstName,
        required String age,
        required String sex,
        required String lastVisit,
        required String appointmentDate,
        required String appointmentTime,
        required String paymentStatus,
        required String confirmationStatus}) {
    this._firstName = firstName;
    this._age = age;
    this._sex = sex;
    this._lastVisit = lastVisit;
    this._appointmentDate = appointmentDate;
    this._appointmentTime = appointmentTime;
    this._paymentStatus = paymentStatus;
    this._confirmationStatus = confirmationStatus;
  }



  Appointments.fromJson(Map<String, dynamic> json) {
    _firstName = json['first_name'];
    _age = json['age'];
    _sex = json['sex'];
    _lastVisit = json['last_visit'];
    _appointmentDate = json['appointment_date'];
    _appointmentTime = json['appointment_time'];
    _paymentStatus = json['payment_status'];
    _confirmationStatus = json['confirmation_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this._firstName;
    data['age'] = this._age;
    data['sex'] = this._sex;
    data['last_visit'] = this._lastVisit;
    data['appointment_date'] = this._appointmentDate;
    data['appointment_time'] = this._appointmentTime;
    data['payment_status'] = this._paymentStatus;
    data['confirmation_status'] = this._confirmationStatus;
    return data;
  }
}
