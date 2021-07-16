class Ownerlist {
  List<ListingOwners> listingOwners = [];

  Ownerlist(this.listingOwners);

  Ownerlist.fromJson(Map<String, dynamic> json) {
    if (json['listingOwners'] != null) {
      listingOwners = <ListingOwners>[];
      json['listingOwners'].forEach((v) {
        listingOwners.add(new ListingOwners.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.listingOwners != null) {
      data['listingOwners'] =
          this.listingOwners.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ListingOwners {
  int? id;
  int? biddingOwnerId;
  String? image;
  String? title;
  String? description;
  int? price;
  int? discount;
  int? enableDiscount;
  String? name;
  String? fatherName;
  String? motherName;
  String? remarks;
  String? audio;
  String? details;
  String? startDatetime;
  String? endDatetime;
  String? status;
  String? payStatus;
  String? payStatusLabel;
  String? titleColor;
  int? order;
  String? createdAt;
  String? updatedAt;
  LastBiddingOffer? lastBiddingOffer;
  String? lastPrice;

  ListingOwners(
      this.id,
      this.biddingOwnerId,
      this.image,
      this.title,
      this.description,
      this.price,
      this.discount,
      this.enableDiscount,
      this.name,
      this.fatherName,
      this.motherName,
      this.remarks,
      this.audio,
      this.details,
      this.startDatetime,
      this.endDatetime,
      this.status,
      this.payStatus,
      this.payStatusLabel,
      this.titleColor,
      this.order,
      this.createdAt,
      this.updatedAt,
      this.lastBiddingOffer,
      this.lastPrice);

  ListingOwners.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    biddingOwnerId = json['bidding_owner_id'];
    image = json['image'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    discount = json['discount'];
    enableDiscount = json['enable_discount'];
    name = json['name'];
    fatherName = json['father_name'];
    motherName = json['mother_name'];
    remarks = json['remarks'];
    audio = json['audio'];
    details = json['details'];
    startDatetime = json['start_datetime'];
    endDatetime = json['end_datetime'];
    status = json['status'];
    payStatus = json['pay_status'];
    payStatusLabel = json['pay_status_label'];
    titleColor = json['title_color'];
    order = json['order'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    lastBiddingOffer = json['lastBiddingOffer'] != null
        ? new LastBiddingOffer.fromJson(json['lastBiddingOffer'])
        : null;
    lastPrice = json['last_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['bidding_owner_id'] = this.biddingOwnerId;
    data['image'] = this.image;
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
    data['discount'] = this.discount;
    data['enable_discount'] = this.enableDiscount;
    data['name'] = this.name;
    data['father_name'] = this.fatherName;
    data['mother_name'] = this.motherName;
    data['remarks'] = this.remarks;
    data['audio'] = this.audio;
    data['details'] = this.details;
    data['start_datetime'] = this.startDatetime;
    data['end_datetime'] = this.endDatetime;
    data['status'] = this.status;
    data['pay_status'] = this.payStatus;
    data['title_color'] = this.titleColor;
    data['order'] = this.order;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['lastBiddingOffer'] = this.lastBiddingOffer?.toJson();
    data['last_price'] = this.lastPrice;
    return data;
  }
}

class LastBiddingOffer {
  int? id;
  String? username;
  int? userId;
  int? biddingItemId;
  String? phone;
  int? price;
  String? status;
  String? payStatus;
  String? createdAt;
  String? updatedAt;

  LastBiddingOffer(
      {this.id,
      this.username,
      this.userId,
      this.biddingItemId,
      this.phone,
      this.price,
      this.status,
      this.payStatus,
      this.createdAt,
      this.updatedAt});

  LastBiddingOffer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    userId = json['user_id'];
    biddingItemId = json['bidding_item_id'];
    phone = json['phone'];
    price = json['price'];
    status = json['status'];
    payStatus = json['pay_status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['bidding_item_id'] = this.biddingItemId;
    data['phone'] = this.phone;
    data['price'] = this.price;
    data['status'] = this.status;
    data['pay_status'] = this.payStatus;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
