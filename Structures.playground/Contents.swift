struct Car {
  var color: String
  var name: String
  var topSpeed: Int
  var mileage: Int

  func drive() {
    print("\(color) car can drive at a maximum speed of: \(topSpeed)!")
  }
}

var newCar = Car(color: "blue", name: "Car 1", topSpeed: 100, mileage: 5000)

newCar.drive()


// Mutating Func
struct TableReservation {
  var name: String
  var tableNumber: Int

  mutating func updateBooking(updatedName: String) {
    name = updatedName
  }
}

var johnBooking = TableReservation(name: "John", tableNumber: 1)
print(johnBooking)
johnBooking.updateBooking(updatedName: "Maria")
print(johnBooking)
