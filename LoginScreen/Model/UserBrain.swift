import Foundation

//MARK: - Create a struct for User ID
struct User {
    let login: String
    let password: String
    let person: Person
}

//MARK: - Create a struct for Person Info
struct Person {
    let firstName: String
    let lastName: String
    let age: Int
    let birthday: String
    let bio: String
    let fact1: String
    let fact2: String
    
}
//MARK: - Filling user info
// Создаём функцию для получения заранее введённой информации о пользователе
extension User {
    
    static func getUserInfo() -> User {
        User(login: "Anna",
             password: "anna2022",
             person: Person(
                firstName: "Dmitry",
                lastName: "Tkach",
                age: 31,
                birthday: "31.12.1990",
                bio: "Short bio",
                fact1: "Computer",
                fact2: "Guitar"))
    }
}
