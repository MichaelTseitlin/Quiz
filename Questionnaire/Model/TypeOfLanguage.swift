//
//  TypeOfLanguage.swift
//  Questionnaire
//
//  Created by Michael Tseitlin on 5/1/19.
//  Copyright © 2019 Michael Tseitlin. All rights reserved.
//

enum TypeOfLanguage: String {
    case python = "Python"
    case java = "Java"
    case c = "C"
    case cPlusPlus = "C++"
    case javaScript = "JavaScript"
    case cSharp = "C#"
    case ruby = "Ruby"
    case php = "PHP"
    case swift = "Swift"
    case next
    
    var definition: String {
        switch self {
        case .python:
            return "Широко известен, как лучший язык программирования для начинающих \n\n Самый легкий старт \n\n Повсеместно используется в науке и технике \n\n Вы можете писать web приложения, исполльзуя популярный Фреймворк Django"
        case .java:
            return "Очень популярен на всех платформах, ОС и устройствах, благодаря своей кроссплатформенности \n\n Один из самых востребованных и высокооплачиваемых языков программирования \n\n Слоган: 'Написано однажды - работает везде!'"
        case .c:
            return "Лингва франка среди языков программирования \n\n Один из самых старых и самых широко используемых языков в мире \n\n Отлично подходит для системного и аппаратного программирования \n\n Подмножество языка С++, за некоторыми исключениями"
        case .cPlusPlus:
            return "Более сложная версия С с существенно расширенным набором возможностей \n\n Широко используется при разработке игр, промышленных и высокопроизводительных приложений \n\n Изучать С++ - все равно что изучать как производить, собирать и водить машину \n\n Рекомендуется только если у вас есть наставник, который будет вами руководить"
        case .javaScript:
            return "Самый популярный язык для разрабокти клиентской части web приложений \n\n Обязателен для frond-end разработчиков (наряду с HTML и CSS) \n\n Один из самых обсуждаемых языков на данный момент, благодаря его растущей популярности в области server-side программирования (node.js)"
        case .cSharp:
            return "Популярный выбор предприятий для разработки web-сайтов и Windows приложений, используя .NET framework \n\n Может быть использован для создания web-сайтов с помощью web Фреймоврка от Microsoft - ASP.NET \n\n Синтаксисом и функционалом покож на Java"
        case .ruby:
            return "В основном известен благодаря очень популярному web фреймворку Ruby on Rails \n\n Заточен под достижений конкретных целей \n\n Спроектирован для удобного и продуктивного программирования \n\n Отлично подходит для собственных проектов, стартапов и быстрого программирования"
        case .php:
            return "Хорош для создания небольших web приложений в сжатые сроки \n\n Поддерживается всеми web-хостингами, вне зависимости от цены"
        case .swift:
            return "Один из основных языков, используемый Apple для своей экосистемы \n\n Выбирайте, если собираетесь разрабатывать только под MacOS и iOS watchOS tvOS"
        case .next:
            return ""
        }
    }
    
    var imageOfLanguage: String? {
        switch self {
        case .python:
            return "python"
        case .java:
            return "java"
        case .c:
            return "c"
        case .cPlusPlus:
            return "c++"
        case .javaScript:
            return "javaScript"
        case .cSharp:
            return "c#"
        case .ruby:
            return "ruby"
        case .php:
            return "php"
        case .swift:
            return "swift"
        case .next:
            return nil
        }
    }
    
    var starsOfDifficulty: String? {
        switch self {
        case .python, .swift:
            return "1"
        case .javaScript, .ruby, .php:
            return "2"
        case .java, .c, .cSharp:
            return "3"
        case .cPlusPlus:
            return "4"
        case .next:
            return nil
        }
    }
}
