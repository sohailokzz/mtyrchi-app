class Homelisting {
  List<BiddingOwner>? biddingOwners;
  int? next;
  int? prev;

  Homelisting({this.biddingOwners, this.next, this.prev});

  Homelisting.fromJson(Map<String, dynamic> json) {
    if (json['biddingOwners'] != null) {
      biddingOwners = <BiddingOwner>[];
      json['biddingOwners'].forEach((v) {
        biddingOwners?.add(new BiddingOwner.fromJson(v));
      });
    }
    next = json['next'];
    prev = json['prev'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.biddingOwners != null) {
      data['biddingOwners'] =
          this.biddingOwners?.map((v) => v.toJson()).toList();
    }
    data['next'] = this.next;
    data['prev'] = this.prev;
    return data;
  }
}

class BiddingOwner {
  int? id;
  String? day;
  String? time;
  int? biddingYearId;
  String? name;
  String? phoneCode;
  String? phoneNumber;
  int? enablePassword;
  String? password;
  int? enableEditing;
  String? passwordEditing;
  int? enableRecording;
  String? passwordRecording;
  String? startDatetime;
  String? endDatetime;
  String? textBlock;
  int? order;
  String? createdAt;
  String? updatedAt;
  bool? hasOpened;
  String? itemsCount;
  String? totalPrice;
  String? refund;
  String? paid;

  BiddingOwner(
      {this.id,
      this.day,
      this.time,
      this.biddingYearId,
      this.name,
      this.phoneCode,
      this.phoneNumber,
      this.enablePassword,
      this.password,
      this.enableEditing,
      this.passwordEditing,
      this.enableRecording,
      this.passwordRecording,
      this.startDatetime,
      this.endDatetime,
      this.textBlock,
      this.order,
      this.createdAt,
      this.updatedAt,
      this.hasOpened,
      this.itemsCount,
      this.totalPrice,
      this.refund,
      this.paid});

  BiddingOwner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    day = json['day'];
    time = json['time'];
    biddingYearId = json['bidding_year_id'];
    name = json['name'];
    phoneCode = json['phone_code'];
    phoneNumber = json['phone_number'];
    enablePassword = json['enable_password'];
    password = json['password'];
    enableEditing = json['enable_editing'];
    passwordEditing = json['password_editing'];
    enableRecording = json['enable_recording'];
    passwordRecording = json['password_recording'];
    startDatetime = json['start_datetime'];
    endDatetime = json['end_datetime'];
    textBlock = json['text_block'];
    order = json['order'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    hasOpened = json['has_opened'];
    itemsCount = json['items_count'];
    totalPrice = json['total_price'];
    refund = json['refund'];
    paid = json['paid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['day'] = this.day;
    data['time'] = this.time;
    data['bidding_year_id'] = this.biddingYearId;
    data['name'] = this.name;
    data['phone_code'] = this.phoneCode;
    data['phone_number'] = this.phoneNumber;
    data['enable_password'] = this.enablePassword;
    data['password'] = this.password;
    data['enable_editing'] = this.enableEditing;
    data['password_editing'] = this.passwordEditing;
    data['enable_recording'] = this.enableRecording;
    data['password_recording'] = this.passwordRecording;
    data['start_datetime'] = this.startDatetime;
    data['end_datetime'] = this.endDatetime;
    data['text_block'] = this.textBlock;
    data['order'] = this.order;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['has_opened'] = this.hasOpened;
    data['items_count'] = this.itemsCount;
    data['total_price'] = this.totalPrice;
    data['refund'] = this.refund;
    data['paid'] = this.paid;
    return data;
  }
}
