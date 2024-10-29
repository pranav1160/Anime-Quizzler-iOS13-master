struct QuizBrain {
    let quiz: [Question] = [
        Question(q: "Naruto dreams of becoming Hokage.", a: "True"),
        Question(q: "In *One Piece*, Luffy’s crew is called the Straw Hat Pirates.", a: "True"),
        Question(q: "In *Attack on Titan*, Mikasa is Eren’s sister.", a: "False"),
        Question(q: "In *Dragon Ball Z*, Vegeta is a Saiyan prince.", a: "True"),
        Question(q: "The *Death Note* only works during the day.", a: "False"),
        Question(q: "In *My Hero Academia*, All Might is the symbol of peace.", a: "True"),
        Question(q: "Saitama from *One Punch Man* can defeat any opponent with a single punch.", a: "True"),
        Question(q: "In *Bleach*, Ichigo’s Zanpakuto is named Zangetsu.", a: "True"),
        Question(q: "Light Yagami uses the *Death Note* to become Kira.", a: "True"),
        Question(q: "Gon Freecss is searching for his father in *Hunter x Hunter*.", a: "True"),
        Question(q: "Edward Elric loses both his arms in *Fullmetal Alchemist*.", a: "False"),
        Question(q: "In *Sword Art Online*, players are stuck in the game until they defeat the final boss.", a: "True")
    ]
    
    var quesNumber = 0
    var score = 0
    
    func getQuestion() -> String {
        return quiz[quesNumber].text
    }
    
    func setProgress() -> Float {
        return Float(quesNumber + 1) / Float(quiz.count)
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[quesNumber].answer{
            score += 1;
            return true
        }else{
            return false
        }
    }
    
    mutating func nextQuestion() {
        if quesNumber < quiz.count - 1 {
            quesNumber += 1
        } else {
            quesNumber = 0
            score = 0;
        }
    }
    
    func getScore() -> Int {
        return score
    }
    

}
