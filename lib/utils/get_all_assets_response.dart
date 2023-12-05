class GetAllCategoryResponse {
  bool? isValid;
  String? message;
  Assets? assets;

  GetAllCategoryResponse({this.isValid, this.message, this.assets});

  GetAllCategoryResponse.fromJson(Map<String, dynamic> json) {
    isValid = json['isValid'];
    message = json['message'];
    assets =
        json['assets'] != null ? new Assets.fromJson(json['assets']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isValid'] = this.isValid;
    data['message'] = this.message;
    if (this.assets != null) {
      data['assets'] = this.assets!.toJson();
    }
    return data;
  }
}

class Assets {
  List<MutualFund>? mutualFund;
  List<StockBrokers>? stockBrokers;
  List<BankAccount>? bankAccount;
  List<LifeInsurance>? lifeInsurance;
  List<NonLifeInsurance>? nonLifeInsurance;
  List<CryptoExchanges>? cryptoExchanges;
  List<NationalPensionSchemeNPS>? nationalPensionSchemeNPS;
  List<PF>? pF;
  List<PPF>? pPF;
  List<PostOfficeAccount>? postOfficeAccount;
  List<LandPropertyFlats>? landPropertyFlats;
  List<AnyLoanGivenToAnyone>? anyLoanGivenToAnyone;
  List<Vehicle>? vehicle;
  List<GoldOrnaments>? goldOrnaments;
  List<AnythingElse>? anythingElse;
  List<GENERAL>? gENERAL;

  Assets(
      {this.mutualFund,
      this.stockBrokers,
      this.bankAccount,
      this.lifeInsurance,
      this.nonLifeInsurance,
      this.cryptoExchanges,
      this.nationalPensionSchemeNPS,
      this.pF,
      this.pPF,
      this.postOfficeAccount,
      this.landPropertyFlats,
      this.anyLoanGivenToAnyone,
      this.vehicle,
      this.goldOrnaments,
      this.anythingElse,
      this.gENERAL});

  Assets.fromJson(Map<String, dynamic> json) {
    if (json['Mutual Fund'] != null) {
      mutualFund = <MutualFund>[];
      json['Mutual Fund'].forEach((v) {
        mutualFund!.add(new MutualFund.fromJson(v));
      });
    }
    if (json['Stock Brokers'] != null) {
      stockBrokers = <StockBrokers>[];
      json['Stock Brokers'].forEach((v) {
        stockBrokers!.add(new StockBrokers.fromJson(v));
      });
    }
    if (json['Bank Account'] != null) {
      bankAccount = <BankAccount>[];
      json['Bank Account'].forEach((v) {
        bankAccount!.add(new BankAccount.fromJson(v));
      });
    }
    if (json['Life Insurance'] != null) {
      lifeInsurance = <LifeInsurance>[];
      json['Life Insurance'].forEach((v) {
        lifeInsurance!.add(new LifeInsurance.fromJson(v));
      });
    }
    if (json['Non-Life Insurance'] != null) {
      nonLifeInsurance = <NonLifeInsurance>[];
      json['Non-Life Insurance'].forEach((v) {
        nonLifeInsurance!.add(new NonLifeInsurance.fromJson(v));
      });
    }
    if (json['Crypto Exchanges'] != null) {
      cryptoExchanges = <CryptoExchanges>[];
      json['Crypto Exchanges'].forEach((v) {
        cryptoExchanges!.add(new CryptoExchanges.fromJson(v));
      });
    }
    if (json['National Pension Scheme (NPS)'] != null) {
      nationalPensionSchemeNPS = <NationalPensionSchemeNPS>[];
      json['National Pension Scheme (NPS)'].forEach((v) {
        nationalPensionSchemeNPS!.add(new NationalPensionSchemeNPS.fromJson(v));
      });
    }
    if (json['PF'] != null) {
      pF = <PF>[];
      json['PF'].forEach((v) {
        pF!.add(new PF.fromJson(v));
      });
    }
    if (json['PPF'] != null) {
      pPF = <PPF>[];
      json['PPF'].forEach((v) {
        pPF!.add(new PPF.fromJson(v));
      });
    }
    if (json['Post Office Account'] != null) {
      postOfficeAccount = <PostOfficeAccount>[];
      json['Post Office Account'].forEach((v) {
        postOfficeAccount!.add(new PostOfficeAccount.fromJson(v));
      });
    }
    if (json['Land/Property/Flats'] != null) {
      landPropertyFlats = <LandPropertyFlats>[];
      json['Land/Property/Flats'].forEach((v) {
        landPropertyFlats!.add(new LandPropertyFlats.fromJson(v));
      });
    }
    if (json['Any Loan Given to anyone'] != null) {
      anyLoanGivenToAnyone = <AnyLoanGivenToAnyone>[];
      json['Any Loan Given to anyone'].forEach((v) {
        anyLoanGivenToAnyone!.add(new AnyLoanGivenToAnyone.fromJson(v));
      });
    }
    if (json['Vehicle'] != null) {
      vehicle = <Vehicle>[];
      json['Vehicle'].forEach((v) {
        vehicle!.add(new Vehicle.fromJson(v));
      });
    }
    if (json['Gold/Ornaments'] != null) {
      goldOrnaments = <GoldOrnaments>[];
      json['Gold/Ornaments'].forEach((v) {
        goldOrnaments!.add(new GoldOrnaments.fromJson(v));
      });
    }
    if (json['Anything else'] != null) {
      anythingElse = <AnythingElse>[];
      json['Anything else'].forEach((v) {
        anythingElse!.add(new AnythingElse.fromJson(v));
      });
    }
    if (json['GENERAL'] != null) {
      gENERAL = <GENERAL>[];
      json['GENERAL'].forEach((v) {
        gENERAL!.add(new GENERAL.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.mutualFund != null) {
      data['Mutual Fund'] = this.mutualFund!.map((v) => v.toJson()).toList();
    }
    if (this.stockBrokers != null) {
      data['Stock Brokers'] =
          this.stockBrokers!.map((v) => v.toJson()).toList();
    }
    if (this.bankAccount != null) {
      data['Bank Account'] = this.bankAccount!.map((v) => v.toJson()).toList();
    }
    if (this.lifeInsurance != null) {
      data['Life Insurance'] =
          this.lifeInsurance!.map((v) => v.toJson()).toList();
    }
    if (this.nonLifeInsurance != null) {
      data['Non-Life Insurance'] =
          this.nonLifeInsurance!.map((v) => v.toJson()).toList();
    }
    if (this.cryptoExchanges != null) {
      data['Crypto Exchanges'] =
          this.cryptoExchanges!.map((v) => v.toJson()).toList();
    }
    if (this.nationalPensionSchemeNPS != null) {
      data['National Pension Scheme (NPS)'] =
          this.nationalPensionSchemeNPS!.map((v) => v.toJson()).toList();
    }
    if (this.pF != null) {
      data['PF'] = this.pF!.map((v) => v.toJson()).toList();
    }
    if (this.pPF != null) {
      data['PPF'] = this.pPF!.map((v) => v.toJson()).toList();
    }
    if (this.postOfficeAccount != null) {
      data['Post Office Account'] =
          this.postOfficeAccount!.map((v) => v.toJson()).toList();
    }
    if (this.landPropertyFlats != null) {
      data['Land/Property/Flats'] =
          this.landPropertyFlats!.map((v) => v.toJson()).toList();
    }
    if (this.anyLoanGivenToAnyone != null) {
      data['Any Loan Given to anyone'] =
          this.anyLoanGivenToAnyone!.map((v) => v.toJson()).toList();
    }
    if (this.vehicle != null) {
      data['Vehicle'] = this.vehicle!.map((v) => v.toJson()).toList();
    }
    if (this.goldOrnaments != null) {
      data['Gold/Ornaments'] =
          this.goldOrnaments!.map((v) => v.toJson()).toList();
    }
    if (this.anythingElse != null) {
      data['Anything else'] =
          this.anythingElse!.map((v) => v.toJson()).toList();
    }
    if (this.gENERAL != null) {
      data['GENERAL'] = this.gENERAL!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StockBrokers {
  int? userId;
  String? uamId;
  List<AssetsList>? assetsList;

  StockBrokers({this.userId, this.uamId, this.assetsList});

  StockBrokers.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    uamId = json['uamId'];
    if (json['assetsList'] != null) {
      assetsList = <AssetsList>[];
      json['assetsList'].forEach((v) {
        assetsList!.add(new AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['uamId'] = this.uamId;
    if (this.assetsList != null) {
      data['assetsList'] = this.assetsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BankAccount {
  int? userId;
  String? uamId;
  List<AssetsList>? assetsList;

  BankAccount({this.userId, this.uamId, this.assetsList});

  BankAccount.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    uamId = json['uamId'];
    if (json['assetsList'] != null) {
      assetsList = <AssetsList>[];
      json['assetsList'].forEach((v) {
        assetsList!.add(new AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['uamId'] = this.uamId;
    if (this.assetsList != null) {
      data['assetsList'] = this.assetsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MutualFund {
  int? userId;
  String? uamId;
  List<AssetsList>? assetsList;

  MutualFund({this.userId, this.uamId, this.assetsList});

  MutualFund.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    uamId = json['uamId'];
    if (json['assetsList'] != null) {
      assetsList = <AssetsList>[];
      json['assetsList'].forEach((v) {
        assetsList!.add(new AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['uamId'] = this.uamId;
    if (this.assetsList != null) {
      data['assetsList'] = this.assetsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LifeInsurance {
  int? userId;
  String? uamId;
  List<AssetsList>? assetsList;

  LifeInsurance({this.userId, this.uamId, this.assetsList});

  LifeInsurance.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    uamId = json['uamId'];
    if (json['assetsList'] != null) {
      assetsList = <AssetsList>[];
      json['assetsList'].forEach((v) {
        assetsList!.add(new AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['uamId'] = this.uamId;
    if (this.assetsList != null) {
      data['assetsList'] = this.assetsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NonLifeInsurance {
  int? userId;
  String? uamId;
  List<AssetsList>? assetsList;

  NonLifeInsurance({this.userId, this.uamId, this.assetsList});

  NonLifeInsurance.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    uamId = json['uamId'];
    if (json['assetsList'] != null) {
      assetsList = <AssetsList>[];
      json['assetsList'].forEach((v) {
        assetsList!.add(new AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['uamId'] = this.uamId;
    if (this.assetsList != null) {
      data['assetsList'] = this.assetsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CryptoExchanges {
  int? userId;
  String? uamId;
  List<AssetsList>? assetsList;

  CryptoExchanges({this.userId, this.uamId, this.assetsList});

  CryptoExchanges.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    uamId = json['uamId'];
    if (json['assetsList'] != null) {
      assetsList = <AssetsList>[];
      json['assetsList'].forEach((v) {
        assetsList!.add(new AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['uamId'] = this.uamId;
    if (this.assetsList != null) {
      data['assetsList'] = this.assetsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NationalPensionSchemeNPS {
  int? userId;
  String? uamId;
  List<AssetsList>? assetsList;

  NationalPensionSchemeNPS({this.userId, this.uamId, this.assetsList});

  NationalPensionSchemeNPS.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    uamId = json['uamId'];
    if (json['assetsList'] != null) {
      assetsList = <AssetsList>[];
      json['assetsList'].forEach((v) {
        assetsList!.add(new AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['uamId'] = this.uamId;
    if (this.assetsList != null) {
      data['assetsList'] = this.assetsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PF {
  int? userId;
  String? uamId;
  List<AssetsList>? assetsList;

  PF({this.userId, this.uamId, this.assetsList});

  PF.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    uamId = json['uamId'];
    if (json['assetsList'] != null) {
      assetsList = <AssetsList>[];
      json['assetsList'].forEach((v) {
        assetsList!.add(new AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['uamId'] = this.uamId;
    if (this.assetsList != null) {
      data['assetsList'] = this.assetsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PPF {
  int? userId;
  String? uamId;
  List<AssetsList>? assetsList;

  PPF({this.userId, this.uamId, this.assetsList});

  PPF.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    uamId = json['uamId'];
    if (json['assetsList'] != null) {
      assetsList = <AssetsList>[];
      json['assetsList'].forEach((v) {
        assetsList!.add(new AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['uamId'] = this.uamId;
    if (this.assetsList != null) {
      data['assetsList'] = this.assetsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PostOfficeAccount {
  int? userId;
  String? uamId;
  List<AssetsList>? assetsList;

  PostOfficeAccount({this.userId, this.uamId, this.assetsList});

  PostOfficeAccount.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    uamId = json['uamId'];
    if (json['assetsList'] != null) {
      assetsList = <AssetsList>[];
      json['assetsList'].forEach((v) {
        assetsList!.add(new AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['uamId'] = this.uamId;
    if (this.assetsList != null) {
      data['assetsList'] = this.assetsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LandPropertyFlats {
  int? userId;
  String? uamId;
  List<AssetsList>? assetsList;

  LandPropertyFlats({this.userId, this.uamId, this.assetsList});

  LandPropertyFlats.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    uamId = json['uamId'];
    if (json['assetsList'] != null) {
      assetsList = <AssetsList>[];
      json['assetsList'].forEach((v) {
        assetsList!.add(new AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['uamId'] = this.uamId;
    if (this.assetsList != null) {
      data['assetsList'] = this.assetsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AnyLoanGivenToAnyone {
  int? userId;
  String? uamId;
  List<AssetsList>? assetsList;

  AnyLoanGivenToAnyone({this.userId, this.uamId, this.assetsList});

  AnyLoanGivenToAnyone.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    uamId = json['uamId'];
    if (json['assetsList'] != null) {
      assetsList = <AssetsList>[];
      json['assetsList'].forEach((v) {
        assetsList!.add(new AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['uamId'] = this.uamId;
    if (this.assetsList != null) {
      data['assetsList'] = this.assetsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Vehicle {
  int? userId;
  String? uamId;
  List<AssetsList>? assetsList;

  Vehicle({this.userId, this.uamId, this.assetsList});

  Vehicle.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    uamId = json['uamId'];
    if (json['assetsList'] != null) {
      assetsList = <AssetsList>[];
      json['assetsList'].forEach((v) {
        assetsList!.add(new AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['uamId'] = this.uamId;
    if (this.assetsList != null) {
      data['assetsList'] = this.assetsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GoldOrnaments {
  int? userId;
  String? uamId;
  List<AssetsList>? assetsList;

  GoldOrnaments({this.userId, this.uamId, this.assetsList});

  GoldOrnaments.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    uamId = json['uamId'];
    if (json['assetsList'] != null) {
      assetsList = <AssetsList>[];
      json['assetsList'].forEach((v) {
        assetsList!.add(new AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['uamId'] = this.uamId;
    if (this.assetsList != null) {
      data['assetsList'] = this.assetsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AnythingElse {
  int? userId;
  String? uamId;
  List<AssetsList>? assetsList;

  AnythingElse({this.userId, this.uamId, this.assetsList});

  AnythingElse.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    uamId = json['uamId'];
    if (json['assetsList'] != null) {
      assetsList = <AssetsList>[];
      json['assetsList'].forEach((v) {
        assetsList!.add(new AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['uamId'] = this.uamId;
    if (this.assetsList != null) {
      data['assetsList'] = this.assetsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GENERAL {
  int? userId;
  String? uamId;
  List<AssetsList>? assetsList;

  GENERAL({this.userId, this.uamId, this.assetsList});

  GENERAL.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    uamId = json['uamId'];
    if (json['assetsList'] != null) {
      assetsList = <AssetsList>[];
      json['assetsList'].forEach((v) {
        assetsList!.add(new AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['uamId'] = this.uamId;
    if (this.assetsList != null) {
      data['assetsList'] = this.assetsList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AssetsList {
  String? type;
  String? label;
  String? categoryName;
  String? value;
  int? assetSubId;
  int? userAssetMapId;

  AssetsList(
      {this.type,
      this.label,
      this.categoryName,
      this.value,
      this.assetSubId,
      this.userAssetMapId});

  AssetsList.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    label = json['label'];
    categoryName = json['categoryName'];
    value = json['value'];
    assetSubId = json['assetSubId'];
    userAssetMapId = json['userAssetMapId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['label'] = this.label;
    data['categoryName'] = this.categoryName;
    data['value'] = this.value;
    data['assetSubId'] = this.assetSubId;
    data['userAssetMapId'] = this.userAssetMapId;
    return data;
  }
}
