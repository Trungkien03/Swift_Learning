import Foundation


// Define Little Lemon server Address
let littleLemonAddress = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json"

// initialize a new URL object with the little lemon address String
let url = URL(string: littleLemonAddress)

// use guard to unwrap the url constant
guard let url = url else {
    throw NSError()
}

// create new URL Request with object unwrapped url
var request = URLRequest(url: url)
request.httpMethod = "POST"

// create a new data task
let task = URLSession.shared.dataTask(with: request) { data, response, error in
    if let data = data,
       let string = String(data: data, encoding: .utf8) {
        print(string)
    }
}
task.resume()
