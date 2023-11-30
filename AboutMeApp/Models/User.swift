//
//  Authentication.swift
//  AboutMeApp
//
//  Created by Антон Пеньков on 30.11.2023.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUserInfo() -> User {
        User(
            userName: "1",
            password: "1",
            person: Person(
                firstName: "Антон",
                lastName: "Пеньков",
                age: "29",
                city: "Нови Сад, Сербия",
                bio:
                    """
                    Родился в Москве. 
                    Степень магистра по тепловой и ядерной энергетике.
                    6 лет работал в Росатоме, проектировал АЭС для Бангладеш, Индии, России и Турции.
                    Больше года учился в Skillbox и возненавидел курс.
                    После 6 этапов собеседований в Миланскую компанию получил отказ и понял, что нужно искать нормальный курс.
                    Все еще мечтаю как можно скорее найти работу iOS-разработчика.
                    Хобби: КроссФит и Стоицизм.
                    """
            )
        )
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let age: String
    let city: String
    let bio: String
}
