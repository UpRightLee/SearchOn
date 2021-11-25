//
//  WebViewModel.swift
//  SearchME
//
//  Created by James Lee on 2021/08/01.
//

import Foundation
import Combine

class WebViewModel: ObservableObject {
    var foo = PassthroughSubject<Bool, Never>()
    var bar = PassthroughSubject<Bool, Never>()
}
