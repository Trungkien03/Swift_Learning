//
//  Order.swift
//  Appetizers
//
//  Created by Trung Kiên Nguyễn on 26/4/24.
//

import Foundation

final class Order: ObservableObject {
    @Published var orders: [Appetizer] = []
    
    
    func totalPrice(){
        orders.reduce(0, {$0 + $1.price})
    }
    
    func add (_ appetizer: Appetizer){
        orders.append(appetizer)
    }
    
    func delete (_ indexSet: IndexSet){
        orders.remove(atOffsets: indexSet)
    }
}
