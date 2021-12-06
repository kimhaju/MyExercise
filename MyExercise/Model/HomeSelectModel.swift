//
//  HomeSelectModel.swift
//  MyExercise
//
//  Created by haju Kim on 2021/12/06.
//

import Foundation

struct HomeSelectModel: Identifiable {
    
    var id = UUID().uuidString
    var name : String
    var numSelect : Int
    var asset : String
    
}

var selectModel = [

    HomeSelectModel(name: "Coding", numSelect: 12,asset: "coding"),
    HomeSelectModel(name: "Trading", numSelect: 12,asset: "trading"),
    HomeSelectModel(name: "Cooking", numSelect: 12,asset: "cooking"),
    HomeSelectModel(name: "Marketing", numSelect: 12,asset: "marketing"),
    HomeSelectModel(name: "UI/UX", numSelect: 12,asset: "ux"),
    HomeSelectModel(name: "Digital Marketing", numSelect: 12, asset: "digital")
]

