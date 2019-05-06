//
//  QuestionManager.swift
//  Questionnaire
//
//  Created by Michael Tseitlin on 5/3/19.
//  Copyright © 2019 Michael Tseitlin. All rights reserved.
//

class QuestionManager {
    
    static func generateQuestions() -> Question {
        
        // MARK: - Questions
        let questionMain = Question.init("Почему Вы решили изучать программирование?")
        let questionOne = Question.init("Заработать")
        let questionTwo = Question.init("Найти работу")
        let questionThree = Question.init("Платформа/область?")
        let questionFour = Question.init("Какая компания больше нравится?")
        let questionFive = Question.init("WEB")
        let questionSix = Question.init("Хочу работать в...")
        let questionSeven = Question.init("Как вы относитесь к Microsoft")
        let questionEight = Question.init("Хотите попробовать что-то новое с большим потенциалом, но менее надежное?")
        let questionNine = Question.init("Ваша любимая игрушка?")
        let questionTen = Question.init("Какая ОС?")
        let questionEleven = Question.init("Под какую платформу?")
        let questionTwelve = Question.init("Ваше приложение работает с информацией в реальном времени, как Twitter?")
        let questionThirteen = Question.init("Придумали отличную идею?")
        let questionFourteen = Question.init("Предпочитаю изучать новое:")
        let questionFifteen = Question.init("Авто или механическая КПП?")
        
        // MARK: - Answers
        let answerOneForQuestionMain = Answer.init("Для своих детей", type: .python, nextQuestion: nil)
        let answerTwoForQuestionMain = Answer.init("Заработать", type: .next, nextQuestion: questionOne)
        let answerThreeForQuestionMain = Answer.init("Я не знаю", type: .python, nextQuestion: nil)
        let answerFourForQuestionMain = Answer.init("Просто так", type: .next, nextQuestion: questionThirteen)
        let answerFiveForQuestionMain = Answer.init("Мне интересно", type: .next, nextQuestion: questionThirteen)
        let answerSixForQuestionMain = Answer.init("Проверить себя", type: .next, nextQuestion: questionThirteen)
        
        let answerOneForQuestionOne = Answer.init("Найти работу", type: .next, nextQuestion: questionThree)
        let answerTwoForQuestionOne = Answer.init("Есть идея для стартапа", type: .next, nextQuestion: questionEleven)
        
        let answerOneForQuestionTwo = Answer.init("Платформа/область?", type: .next, nextQuestion: nil)
        
        let answerOneForQuestionThree = Answer.init("Хочу работать в большой компании", type: .next, nextQuestion: questionFour)
        let answerTwoForQuestionThree = Answer.init("Мне все равно просто хочу денег", type: .java, nextQuestion: nil)
        let answerThreeForQuestionThree = Answer.init("WEB", type: .next, nextQuestion: questionFive)
        let answerFourForQuestionThree = Answer.init("Энтерпрайз", type: .next, nextQuestion: questionSeven)
        let answerFiveForQuestionThree = Answer.init("Мобильные", type: .next, nextQuestion: questionTen)
        let answerSixForQuestionThree = Answer.init("3D/Игры", type: .cPlusPlus, nextQuestion: nil)
        
        let answerOneForQuestionFour = Answer.init("Facebook", type: .python, nextQuestion: nil)
        let answerTwoForQuestionFour = Answer.init("Google", type: .python, nextQuestion: nil)
        let answerThreeForQuestionFour = Answer.init("Microsoft", type: .cSharp, nextQuestion: nil)
        let answerFourForQuestionFour = Answer.init("Apple", type: .swift, nextQuestion: nil)
        
        let answerOneForQuestionFive = Answer.init("Веб-интерфейс", type: .javaScript, nextQuestion: nil)
        let answerTwoForQuestionFive = Answer.init("Внутреняя часть сайта", type: .next, nextQuestion: questionSix)
        
        let answerOneForQuestionSix = Answer.init("Корпорации", type: .next, nextQuestion: questionSeven)
        let answerTwoForQuestionSix = Answer.init("Стартапе", type: .next, nextQuestion: questionEight)
        
        let answerOneForQuestionSeven = Answer.init("Фанат!", type: .cSharp, nextQuestion: nil)
        let answerTwoForQuestionSeven = Answer.init("Нормально", type: .java, nextQuestion: nil)
        let answerThreeForQuestionSeven = Answer.init("Отстой!", type: .java, nextQuestion: nil)
        
        let answerOneForQuestionEight = Answer.init("ДА", type: .javaScript, nextQuestion: nil)
        let answerTwoForQuestionEight = Answer.init("Не уверен", type: .next, nextQuestion: questionNine)
        let answerThreeForQuestionEight = Answer.init("НЕТ", type: .next, nextQuestion: questionNine)
        
        let answerOneForQuestionNive = Answer.init("Lego", type: .python, nextQuestion: nil)
        let answerTwoForQuestionNive = Answer.init("Пластилин", type: .ruby, nextQuestion: nil)
        let answerThreeForQuestionNive = Answer.init("Я обожаю свою старую игрушку!", type: .php, nextQuestion: nil)
        
        let answerOneForQuestionTen = Answer.init("iOS", type: .swift, nextQuestion: nil)
        let answerTwoForQuestionTen = Answer.init("Android", type: .java, nextQuestion: nil)
        
        let answerOneForQuestionEleven = answerSixForQuestionThree
        let answerTwoForQuestionEleven = answerFiveForQuestionThree
        let answerThreeForQuestionEleven = answerFourForQuestionThree
        let answerFourForQuestionEleven = Answer.init("WEB", type: .next, nextQuestion: questionTwelve)
        
        let answerOneForQuestionTwelve = answerOneForQuestionEight
        let answerTwoForQuestionTwelve = Answer.init("НЕТ", type: .next, nextQuestion: questionEight)
        
        let answerOneForQuestionThirteen = Answer.init("Нет. Просто хочу начать", type: .next, nextQuestion: questionFourteen)
        let answerTwoForQuestionThirteen = Answer.init("ДА", type: .next, nextQuestion: questionEleven)
        
        let answerOneForQuestionFourteen = Answer.init("По-быстрому", type: .python, nextQuestion: nil)
        let answerTwoForQuestionFourteen = Answer.init("Правильно", type: .python, nextQuestion: nil)
        let answerThreeForQuestionFourteen = Answer.init("Немного попотеть", type: .next, nextQuestion: questionFifteen)
        let answerFourForQuestionFourteen = Answer.init("Самым сложным путем", type: .cPlusPlus, nextQuestion: nil)
        let answerOneForQuestionFifteen = Answer.init("Авто", type: .java, nextQuestion: nil)
        let answerTwoForQuestionFifteen = Answer.init("Механика", type: .c, nextQuestion: nil)
        
        
        // MARK: - Put answers to question
        questionMain.answers = [answerOneForQuestionMain, answerTwoForQuestionMain, answerThreeForQuestionMain, answerFourForQuestionMain, answerFiveForQuestionMain, answerSixForQuestionMain]
        questionOne.answers = [answerOneForQuestionOne, answerTwoForQuestionOne]
        questionTwo.answers = [answerOneForQuestionTwo]
        questionThree.answers = [answerOneForQuestionThree, answerTwoForQuestionThree, answerThreeForQuestionThree, answerFourForQuestionThree, answerFiveForQuestionThree, answerSixForQuestionThree]
        questionFour.answers = [answerOneForQuestionFour, answerTwoForQuestionFour, answerThreeForQuestionFour, answerFourForQuestionFour]
        questionFive.answers = [answerOneForQuestionFive, answerTwoForQuestionFive]
        questionSix.answers = [answerOneForQuestionSix, answerTwoForQuestionSix]
        questionSeven.answers = [answerOneForQuestionSeven, answerTwoForQuestionSeven, answerThreeForQuestionSeven]
        questionEight.answers = [answerOneForQuestionEight, answerTwoForQuestionEight, answerThreeForQuestionEight]
        questionNine.answers = [answerOneForQuestionNive, answerTwoForQuestionNive, answerThreeForQuestionNive]
        questionTen.answers = [answerOneForQuestionTen, answerTwoForQuestionTen]
        questionEleven.answers = [answerOneForQuestionEleven, answerTwoForQuestionEleven, answerThreeForQuestionEleven, answerFourForQuestionEleven]
        questionTwelve.answers = [answerOneForQuestionTwelve, answerTwoForQuestionTwelve]
        questionThirteen.answers = [answerOneForQuestionThirteen, answerTwoForQuestionThirteen]
        questionFourteen.answers = [answerOneForQuestionFourteen, answerTwoForQuestionFourteen, answerThreeForQuestionFourteen, answerFourForQuestionFourteen]
        questionFifteen.answers = [answerOneForQuestionFifteen, answerTwoForQuestionFifteen]
        
        return questionMain
    }
}
