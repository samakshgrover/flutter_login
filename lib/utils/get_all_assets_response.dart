class GetAllCategoryResponse {
  bool? isValid;
  String? message;
  Assets? assets;

  GetAllCategoryResponse({this.isValid, this.message, this.assets});

  GetAllCategoryResponse.fromJson(Map<String, dynamic> json) {
    isValid = json['isValid'];
    message = json['message'];
    assets =
        json['assets'] != null ? Assets.fromJson(json['assets']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['isValid'] = isValid;
    data['message'] = message;
    if (assets != null) {
      data['assets'] = assets!.toJson();
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
        mutualFund!.add(MutualFund.fromJson(v));
      });
    }
    if (json['Stock Brokers'] != null) {
      stockBrokers = <StockBrokers>[];
      json['Stock Brokers'].forEach((v) {
        stockBrokers!.add(StockBrokers.fromJson(v));
      });
    }
    if (json['Bank Account'] != null) {
      bankAccount = <BankAccount>[];
      json['Bank Account'].forEach((v) {
        bankAccount!.add(BankAccount.fromJson(v));
      });
    }
    if (json['Life Insurance'] != null) {
      lifeInsurance = <LifeInsurance>[];
      json['Life Insurance'].forEach((v) {
        lifeInsurance!.add(LifeInsurance.fromJson(v));
      });
    }
    if (json['Non-Life Insurance'] != null) {
      nonLifeInsurance = <NonLifeInsurance>[];
      json['Non-Life Insurance'].forEach((v) {
        nonLifeInsurance!.add(NonLifeInsurance.fromJson(v));
      });
    }
    if (json['Crypto Exchanges'] != null) {
      cryptoExchanges = <CryptoExchanges>[];
      json['Crypto Exchanges'].forEach((v) {
        cryptoExchanges!.add(CryptoExchanges.fromJson(v));
      });
    }
    if (json['National Pension Scheme (NPS)'] != null) {
      nationalPensionSchemeNPS = <NationalPensionSchemeNPS>[];
      json['National Pension Scheme (NPS)'].forEach((v) {
        nationalPensionSchemeNPS!.add(NationalPensionSchemeNPS.fromJson(v));
      });
    }
    if (json['PF'] != null) {
      pF = <PF>[];
      json['PF'].forEach((v) {
        pF!.add(PF.fromJson(v));
      });
    }
    if (json['PPF'] != null) {
      pPF = <PPF>[];
      json['PPF'].forEach((v) {
        pPF!.add(PPF.fromJson(v));
      });
    }
    if (json['Post Office Account'] != null) {
      postOfficeAccount = <PostOfficeAccount>[];
      json['Post Office Account'].forEach((v) {
        postOfficeAccount!.add(PostOfficeAccount.fromJson(v));
      });
    }
    if (json['Land/Property/Flats'] != null) {
      landPropertyFlats = <LandPropertyFlats>[];
      json['Land/Property/Flats'].forEach((v) {
        landPropertyFlats!.add(LandPropertyFlats.fromJson(v));
      });
    }
    if (json['Any Loan Given to anyone'] != null) {
      anyLoanGivenToAnyone = <AnyLoanGivenToAnyone>[];
      json['Any Loan Given to anyone'].forEach((v) {
        anyLoanGivenToAnyone!.add(AnyLoanGivenToAnyone.fromJson(v));
      });
    }
    if (json['Vehicle'] != null) {
      vehicle = <Vehicle>[];
      json['Vehicle'].forEach((v) {
        vehicle!.add(Vehicle.fromJson(v));
      });
    }
    if (json['Gold/Ornaments'] != null) {
      goldOrnaments = <GoldOrnaments>[];
      json['Gold/Ornaments'].forEach((v) {
        goldOrnaments!.add(GoldOrnaments.fromJson(v));
      });
    }
    if (json['Anything else'] != null) {
      anythingElse = <AnythingElse>[];
      json['Anything else'].forEach((v) {
        anythingElse!.add(AnythingElse.fromJson(v));
      });
    }
    if (json['GENERAL'] != null) {
      gENERAL = <GENERAL>[];
      json['GENERAL'].forEach((v) {
        gENERAL!.add(GENERAL.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (mutualFund != null) {
      data['Mutual Fund'] = mutualFund!.map((v) => v.toJson()).toList();
    }
    if (stockBrokers != null) {
      data['Stock Brokers'] =
          stockBrokers!.map((v) => v.toJson()).toList();
    }
    if (bankAccount != null) {
      data['Bank Account'] = bankAccount!.map((v) => v.toJson()).toList();
    }
    if (lifeInsurance != null) {
      data['Life Insurance'] =
          lifeInsurance!.map((v) => v.toJson()).toList();
    }
    if (nonLifeInsurance != null) {
      data['Non-Life Insurance'] =
          nonLifeInsurance!.map((v) => v.toJson()).toList();
    }
    if (cryptoExchanges != null) {
      data['Crypto Exchanges'] =
          cryptoExchanges!.map((v) => v.toJson()).toList();
    }
    if (nationalPensionSchemeNPS != null) {
      data['National Pension Scheme (NPS)'] =
          nationalPensionSchemeNPS!.map((v) => v.toJson()).toList();
    }
    if (pF != null) {
      data['PF'] = pF!.map((v) => v.toJson()).toList();
    }
    if (pPF != null) {
      data['PPF'] = pPF!.map((v) => v.toJson()).toList();
    }
    if (postOfficeAccount != null) {
      data['Post Office Account'] =
          postOfficeAccount!.map((v) => v.toJson()).toList();
    }
    if (landPropertyFlats != null) {
      data['Land/Property/Flats'] =
          landPropertyFlats!.map((v) => v.toJson()).toList();
    }
    if (anyLoanGivenToAnyone != null) {
      data['Any Loan Given to anyone'] =
          anyLoanGivenToAnyone!.map((v) => v.toJson()).toList();
    }
    if (vehicle != null) {
      data['Vehicle'] = vehicle!.map((v) => v.toJson()).toList();
    }
    if (goldOrnaments != null) {
      data['Gold/Ornaments'] =
          goldOrnaments!.map((v) => v.toJson()).toList();
    }
    if (anythingElse != null) {
      data['Anything else'] =
          anythingElse!.map((v) => v.toJson()).toList();
    }
    if (gENERAL != null) {
      data['GENERAL'] = gENERAL!.map((v) => v.toJson()).toList();
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
        assetsList!.add(AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['uamId'] = uamId;
    if (assetsList != null) {
      data['assetsList'] = assetsList!.map((v) => v.toJson()).toList();
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
        assetsList!.add(AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['uamId'] = uamId;
    if (assetsList != null) {
      data['assetsList'] = assetsList!.map((v) => v.toJson()).toList();
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
        assetsList!.add(AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['uamId'] = uamId;
    if (assetsList != null) {
      data['assetsList'] = assetsList!.map((v) => v.toJson()).toList();
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
        assetsList!.add(AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['uamId'] = uamId;
    if (assetsList != null) {
      data['assetsList'] = assetsList!.map((v) => v.toJson()).toList();
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
        assetsList!.add(AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['uamId'] = uamId;
    if (assetsList != null) {
      data['assetsList'] = assetsList!.map((v) => v.toJson()).toList();
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
        assetsList!.add(AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['uamId'] = uamId;
    if (assetsList != null) {
      data['assetsList'] = assetsList!.map((v) => v.toJson()).toList();
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
        assetsList!.add(AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['uamId'] = uamId;
    if (assetsList != null) {
      data['assetsList'] = assetsList!.map((v) => v.toJson()).toList();
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
        assetsList!.add(AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['uamId'] = uamId;
    if (assetsList != null) {
      data['assetsList'] = assetsList!.map((v) => v.toJson()).toList();
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
        assetsList!.add(AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['uamId'] = uamId;
    if (assetsList != null) {
      data['assetsList'] = assetsList!.map((v) => v.toJson()).toList();
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
        assetsList!.add(AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['uamId'] = uamId;
    if (assetsList != null) {
      data['assetsList'] = assetsList!.map((v) => v.toJson()).toList();
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
        assetsList!.add(AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['uamId'] = uamId;
    if (assetsList != null) {
      data['assetsList'] = assetsList!.map((v) => v.toJson()).toList();
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
        assetsList!.add(AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['uamId'] = uamId;
    if (assetsList != null) {
      data['assetsList'] = assetsList!.map((v) => v.toJson()).toList();
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
        assetsList!.add(AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['uamId'] = uamId;
    if (assetsList != null) {
      data['assetsList'] = assetsList!.map((v) => v.toJson()).toList();
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
        assetsList!.add(AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['uamId'] = uamId;
    if (assetsList != null) {
      data['assetsList'] = assetsList!.map((v) => v.toJson()).toList();
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
        assetsList!.add(AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['uamId'] = uamId;
    if (assetsList != null) {
      data['assetsList'] = assetsList!.map((v) => v.toJson()).toList();
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
        assetsList!.add(AssetsList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['uamId'] = uamId;
    if (assetsList != null) {
      data['assetsList'] = assetsList!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['label'] = label;
    data['categoryName'] = categoryName;
    data['value'] = value;
    data['assetSubId'] = assetSubId;
    data['userAssetMapId'] = userAssetMapId;
    return data;
  }
}
