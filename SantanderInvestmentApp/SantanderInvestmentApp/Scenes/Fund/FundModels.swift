//
//  FundModels.swift
//  SantanderInvestmentApp
//
//  Created by Michel de Sousa Carvalho on 23/05/18.
//  Copyright (c) 2018 Michel de Sousa Carvalho. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

struct ScreenModel: Codable {
    var screen: FundModel
}

struct FundModel: Codable {
    var title: String?
    var fundName: String?
    var whatIs: String?
    var definition: String?
    var riskTitle: String?
    var risk: Int?
    var infoTitle: String?
    var moreInfo: MoreInfoModel?
    var info: [InfoModel]?
    var downInfo: [InfoModel]?
}

struct MoreInfoModel: Codable {
    var month: InfoDetailModel?
    var year: InfoDetailModel?
    var twelveMonths: InfoDetailModel?
    
    enum CodingKeys: String, CodingKey {
        case month
        case year
        case twelveMonths = "12months"
    }
}

struct InfoDetailModel: Codable {
    var title: String?
    var fund: Float?
    var CDI: Float?
}

struct InfoModel: Codable {
    var name: String?
    var data: String?
}


class FundViewModel {
    var fund: FundModel
    
    init(fund: FundModel) {
        self.fund = fund
    }
    
    func getMoreInfoDetails() -> [InfoDetailModel?] {
        var month = fund.moreInfo?.month
        month?.title = "No mês"
        
        var year = fund.moreInfo?.year
        year?.title = "No ano"
        
        var twelveMonths = fund.moreInfo?.month
        twelveMonths?.title = "12 meses"
        return [month, year, twelveMonths]
    }
}


enum Fund {
    
    
    enum Something
    {
        struct Request
        {
        }
        struct Response {
            
        }
        struct ViewModel {
            
        }
    }
}
