//
//  CategoryView+Model.swift
//  Clon de Wallapop
//
//  Created by Cane Allesta on 1/2/23.
//

import Foundation

struct CategoryModel: Hashable {
    
    let image: String
    let title: String
    let id: String
    
    static func getFakeCategoryModels() -> [CategoryModel] {
        return [
            CategoryModel(image: "car",
                          title: "Cars",
                          id: "1"),
            CategoryModel(image: "bicycle",
                          title: "Motorbike",
                          id: "2"),
            CategoryModel(image: "car.2",
                          title: "Motors & \nAccesories",
                          id: "3"),
            CategoryModel(image: "tshirt",
                          title: "Fashion & \nAccesories",
                          id: "4"),
            CategoryModel(image: "house",
                          title: "Real Estate",
                          id: "5"),
            CategoryModel(image: "tv",
                          title: "TV, Audio & \nCameras",
                          id: "6"),
            CategoryModel(image: "iphone",
                          title: "Cell Phones & \nAccesories",
                          id: "7"),
            CategoryModel(image: "desktopcomputer",
                          title: "Computers & \nElectronics",
                          id: "8"),
            CategoryModel(image: "basketball",
                          title: "Sports & \nLeisure",
                          id: "9"),
            CategoryModel(image: "bicycle",
                          title: "Bikes",
                          id: "10"),
            CategoryModel(image: "gamecontroller",
                          title: "Games & \nConsoles",
                          id: "11")
        ]
    }
}
