func forwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}

let letters = ["H", "E", "X", "A" ]

let sorted = letters.sorted(by: forwards)

print(sorted)

//let myCollections = sorted.sorted(by: {(s1: String, s2:String) -> Bool in return s1 < s2})

//let myCollections = sorted.sorted(by: {(s1, s2) in return s1 < s2})

let myCollections = sorted.sorted(by: {$0 < $1})

print(myCollections)


var goldBars = 100
func spendTenGoldBars(from inventory: inout Int, completion: (Int) -> Void) {
  inventory -= 10
  completion(inventory)
}
print("You had \(goldBars) gold bars.")
spendTenGoldBars(from: &goldBars) { goldBars in
  print("You spent ten gold bars.")
  print("You have \(goldBars) gold bars.")
}
