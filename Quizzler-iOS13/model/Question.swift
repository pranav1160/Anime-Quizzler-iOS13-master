//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Pranav on 29/10/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var text:String;
    var answer:String;
    
    init(q:String,a:String){
        answer = a;
        text = q;
    }
    
}
