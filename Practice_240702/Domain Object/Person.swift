import Foundation

struct Person: Identifiable {
    let id: UUID
    var firstName: String
    var lastName: String
    var age: Int
    var email: String?

    var name: String {
        "\(firstName) \(lastName)"
    }

    init(firstName: String, lastName: String, age: Int, email: String? = nil) {
        self.id = UUID()
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.email = email
    }
}

let dummyPersons: [Person] = [
    .init(firstName: "John", lastName: "Doe", age: 28, email: "john.doe@example.com"),
    .init(firstName: "Jane", lastName: "Smith", age: 32, email: "jane.smith@example.com"),
    .init(firstName: "Emily", lastName: "Johnson", age: 24, email: "emily.johnson@example.com"),
    .init(firstName: "Michael", lastName: "Brown", age: 35, email: nil),
    .init(firstName: "Sarah", lastName: "Davis", age: 29, email: "sarah.davis@example.com"),
    .init(firstName: "Daniel", lastName: "Miller", age: 22, email: "daniel.miller@example.com"),
    .init(firstName: "Lisa", lastName: "Wilson", age: 26, email: "lisa.wilson@example.com"),
    .init(firstName: "Mark", lastName: "Moore", age: 30, email: "mark.moore@example.com"),
    .init(firstName: "Laura", lastName: "Taylor", age: 27, email: "laura.taylor@example.com"),
    .init(firstName: "James", lastName: "Anderson", age: 31, email: nil),
    .init(firstName: "Sophia", lastName: "Thomas", age: 23, email: "sophia.thomas@example.com"),
    .init(firstName: "Olivia", lastName: "Jackson", age: 21, email: "olivia.jackson@example.com"),
    .init(firstName: "Liam", lastName: "White", age: 29, email: "liam.white@example.com"),
    .init(firstName: "Noah", lastName: "Harris", age: 33, email: "noah.harris@example.com"),
    .init(firstName: "Ava", lastName: "Martin", age: 25, email: "ava.martin@example.com"),
    .init(firstName: "William", lastName: "Garcia", age: 40, email: "william.garcia@example.com"),
    .init(firstName: "Mia", lastName: "Clark", age: 30, email: "mia.clark@example.com"),
    .init(firstName: "Ethan", lastName: "Rodriguez", age: 27, email: "ethan.rodriguez@example.com"),
    .init(firstName: "Emma", lastName: "Lewis", age: 22, email: "emma.lewis@example.com"),
    .init(firstName: "Isabella", lastName: "Lee", age: 28, email: nil),
    .init(firstName: "Mason", lastName: "Walker", age: 31, email: "mason.walker@example.com"),
    .init(firstName: "Lucas", lastName: "Hall", age: 26, email: "lucas.hall@example.com"),
    .init(firstName: "Amelia", lastName: "Allen", age: 24, email: "amelia.allen@example.com"),
    .init(firstName: "Harper", lastName: "Young", age: 32, email: "harper.young@example.com"),
    .init(firstName: "Evelyn", lastName: "Hernandez", age: 35, email: "evelyn.hernandez@example.com"),
    .init(firstName: "Jack", lastName: "King", age: 36, email: "jack.king@example.com"),
    .init(firstName: "Charlotte", lastName: "Wright", age: 34, email: "charlotte.wright@example.com"),
    .init(firstName: "Oliver", lastName: "Lopez", age: 38, email: "oliver.lopez@example.com"),
    .init(firstName: "Aiden", lastName: "Hill", age: 37, email: nil),
    .init(firstName: "Zoe", lastName: "Scott", age: 39, email: "zoe.scott@example.com"),
    .init(firstName: "John", lastName: "Doe", age: 28, email: "john.doe@example.com"),
    .init(firstName: "Jane", lastName: "Smith", age: 32, email: "jane.smith@example.com"),
    .init(firstName: "Emily", lastName: "Johnson", age: 24, email: "emily.johnson@example.com"),
    .init(firstName: "Michael", lastName: "Brown", age: 35, email: nil),
    .init(firstName: "Sarah", lastName: "Davis", age: 29, email: "sarah.davis@example.com"),
    .init(firstName: "Daniel", lastName: "Miller", age: 22, email: "daniel.miller@example.com"),
    .init(firstName: "Lisa", lastName: "Wilson", age: 26, email: "lisa.wilson@example.com"),
    .init(firstName: "Mark", lastName: "Moore", age: 30, email: "mark.moore@example.com"),
    .init(firstName: "Laura", lastName: "Taylor", age: 27, email: "laura.taylor@example.com"),
    .init(firstName: "James", lastName: "Anderson", age: 31, email: nil),
    .init(firstName: "Sophia", lastName: "Thomas", age: 23, email: "sophia.thomas@example.com"),
    .init(firstName: "Olivia", lastName: "Jackson", age: 21, email: "olivia.jackson@example.com"),
    .init(firstName: "Liam", lastName: "White", age: 29, email: "liam.white@example.com"),
    .init(firstName: "Noah", lastName: "Harris", age: 33, email: "noah.harris@example.com"),
    .init(firstName: "Ava", lastName: "Martin", age: 25, email: "ava.martin@example.com"),
    .init(firstName: "William", lastName: "Garcia", age: 40, email: "william.garcia@example.com"),
    .init(firstName: "Mia", lastName: "Clark", age: 30, email: "mia.clark@example.com"),
    .init(firstName: "Ethan", lastName: "Rodriguez", age: 27, email: "ethan.rodriguez@example.com"),
    .init(firstName: "Emma", lastName: "Lewis", age: 22, email: "emma.lewis@example.com"),
    .init(firstName: "Isabella", lastName: "Lee", age: 28, email: nil),
    .init(firstName: "Mason", lastName: "Walker", age: 31, email: "mason.walker@example.com"),
    .init(firstName: "Lucas", lastName: "Hall", age: 26, email: "lucas.hall@example.com"),
    .init(firstName: "Amelia", lastName: "Allen", age: 24, email: "amelia.allen@example.com"),
    .init(firstName: "Harper", lastName: "Young", age: 32, email: "harper.young@example.com"),
    .init(firstName: "Evelyn", lastName: "Hernandez", age: 35, email: "evelyn.hernandez@example.com"),
    .init(firstName: "Jack", lastName: "King", age: 36, email: "jack.king@example.com"),
    .init(firstName: "Charlotte", lastName: "Wright", age: 34, email: "charlotte.wright@example.com"),
    .init(firstName: "Oliver", lastName: "Lopez", age: 38, email: "oliver.lopez@example.com"),
    .init(firstName: "Aiden", lastName: "Hill", age: 37, email: nil),
    .init(firstName: "Zoe", lastName: "Scott", age: 39, email: "zoe.scott@example.com"),
    .init(firstName: "John", lastName: "Doe", age: 28, email: "john.doe@example.com"),
    .init(firstName: "Jane", lastName: "Smith", age: 32, email: "jane.smith@example.com"),
    .init(firstName: "Emily", lastName: "Johnson", age: 24, email: "emily.johnson@example.com"),
    .init(firstName: "Michael", lastName: "Brown", age: 35, email: nil),
    .init(firstName: "Sarah", lastName: "Davis", age: 29, email: "sarah.davis@example.com"),
    .init(firstName: "Daniel", lastName: "Miller", age: 22, email: "daniel.miller@example.com"),
    .init(firstName: "Lisa", lastName: "Wilson", age: 26, email: "lisa.wilson@example.com"),
    .init(firstName: "Mark", lastName: "Moore", age: 30, email: "mark.moore@example.com"),
    .init(firstName: "Laura", lastName: "Taylor", age: 27, email: "laura.taylor@example.com"),
    .init(firstName: "James", lastName: "Anderson", age: 31, email: nil),
    .init(firstName: "Sophia", lastName: "Thomas", age: 23, email: "sophia.thomas@example.com"),
    .init(firstName: "Olivia", lastName: "Jackson", age: 21, email: "olivia.jackson@example.com"),
    .init(firstName: "Liam", lastName: "White", age: 29, email: "liam.white@example.com"),
    .init(firstName: "Noah", lastName: "Harris", age: 33, email: "noah.harris@example.com"),
    .init(firstName: "Ava", lastName: "Martin", age: 25, email: "ava.martin@example.com"),
    .init(firstName: "William", lastName: "Garcia", age: 40, email: "william.garcia@example.com"),
    .init(firstName: "Mia", lastName: "Clark", age: 30, email: "mia.clark@example.com"),
    .init(firstName: "Ethan", lastName: "Rodriguez", age: 27, email: "ethan.rodriguez@example.com"),
    .init(firstName: "Emma", lastName: "Lewis", age: 22, email: "emma.lewis@example.com"),
    .init(firstName: "Isabella", lastName: "Lee", age: 28, email: nil),
    .init(firstName: "Mason", lastName: "Walker", age: 31, email: "mason.walker@example.com"),
    .init(firstName: "Lucas", lastName: "Hall", age: 26, email: "lucas.hall@example.com"),
    .init(firstName: "Amelia", lastName: "Allen", age: 24, email: "amelia.allen@example.com"),
    .init(firstName: "Harper", lastName: "Young", age: 32, email: "harper.young@example.com"),
    .init(firstName: "Evelyn", lastName: "Hernandez", age: 35, email: "evelyn.hernandez@example.com"),
    .init(firstName: "Jack", lastName: "King", age: 36, email: "jack.king@example.com"),
    .init(firstName: "Charlotte", lastName: "Wright", age: 34, email: "charlotte.wright@example.com"),
    .init(firstName: "Oliver", lastName: "Lopez", age: 38, email: "oliver.lopez@example.com"),
    .init(firstName: "Aiden", lastName: "Hill", age: 37, email: nil),
    .init(firstName: "Zoe", lastName: "Scott", age: 39, email: "zoe.scott@example.com"),
]
