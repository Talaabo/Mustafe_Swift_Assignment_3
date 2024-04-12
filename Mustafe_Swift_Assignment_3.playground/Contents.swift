
// Defining the superclass
class Ship {
    var name: String              // to store the name of the ship
    var year: Int
    let countryOfOrigin: String
    
    // to initialize the properties of the supar class
    init(name: String, year: Int, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
}

// Defining the subclass of the Ship which is CruiseShip
class CruiseShip: Ship {
    var maxCapacity: Int
    let oceanOfOperation: String
    var currentPassengerCount: Int = 0  // Property to store the current passenger count, assigning to 0 value

    // initializing the properties of the CruiseShip class
    init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String) {
        self.maxCapacity = maxCapacity
        self.oceanOfOperation = oceanOfOperation
        // Calling the superclass to initialize the inherited properties
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }

    // Method that is adding a passenger to the subclass cruise ship
    func addPassenger() {
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 1
            print("Passenger added. Current passenger count: \(currentPassengerCount)")
        } else {
            print("Ship at max capacity. Cannot add more passengers.")
        }
    }

    
    func printPassengerCount() {
        print("Current passenger count: \(currentPassengerCount)")
    }
}

// Defining a subclass of the Ship called CargoShip
class CargoShip: Ship {
    let maxCargoCapacity: Double   // Property to store the maximum cargo capacity of the cargo ship
    var currentCargoCount: Double = 0.0
    var isInternational: Bool

    // Initializer to initialize the properties of the CargoShip class
    init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Double, isInternational: Bool) {
        self.maxCargoCapacity = maxCargoCapacity
        self.isInternational = isInternational
        // Call the superclass's initializer to initialize the inherited properties
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }

    // Method to add cargo to the cargo ship
    func addCargo(cargo: Double) {
        if currentCargoCount + cargo <= maxCargoCapacity {
            currentCargoCount += cargo
            print("Cargo added. Current cargo count: \(currentCargoCount)")
        } else {
            print("Cargo capacity exceeded. Cannot add more cargo.")
        }
    }

    // Method that print the current cargo count of the cargo ship
    func printCargoCount() {
        print("Current cargo count: \(currentCargoCount)")
    }
}

// Define a subclass of Ship called PirateShip
class PirateShip: Ship {
    let maxTreasureCapacity: Double
    var currentTreasureCount: Double = 0.0  // Property to store the current treasure count, assigning to 0
    var numberOfCannons: Int

   
    init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Double, numberOfCannons: Int) {
        self.maxTreasureCapacity = maxTreasureCapacity
        self.numberOfCannons = numberOfCannons
      
        // Calling the superclass's initializer to initialize the inherited properties
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }

    // Method that is adding treasure to the pirate ship
    func addTreasure(treasure: Double) {
        if currentTreasureCount + treasure <= maxTreasureCapacity {
            currentTreasureCount += treasure
            print("Treasure added. Current treasure count: \(currentTreasureCount)")
        } else {
            print("Treasure capacity exceeded. Cannot add more treasure.")
        }
    }

    // Method to print the current treasure count for the pirate ship
    func printTreasureCount() {
        print("Current treasure count: \(currentTreasureCount)")
    }
}

let cruiseShip = CruiseShip(name: "Somgas", year: 2016, countryOfOrigin: "Canada", maxCapacity: 2000, oceanOfOperation: "Redsea")
cruiseShip.addPassenger()
cruiseShip.addPassenger()
cruiseShip.printPassengerCount()

let cargoShip = CargoShip(name: "Omarshipping", year: 2024, countryOfOrigin: "Dubai", maxCargoCapacity: 15000.0, isInternational: true)
cargoShip.addCargo(cargo: 10000.0)
cargoShip.addCargo(cargo: 12000.0)
cargoShip.printCargoCount()

let pirateShip = PirateShip(name: "Berbera port", year: 1950, countryOfOrigin: "Somaliland", maxTreasureCapacity: 30000.0, numberOfCannons: 50)
pirateShip.addTreasure(treasure: 10000.0)
pirateShip.addTreasure(treasure: 12000.0)
pirateShip.printTreasureCount()



