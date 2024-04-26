let levelScore = 10;
var gameScore = 0;
gameScore += levelScore
print("The Game Score is \(gameScore).")
var levelBonusScore = 1.0
levelBonusScore = 20
print("The level's bonus score is \(levelBonusScore).")
gameScore += Int(levelBonusScore)
print("The game's final score is \(gameScore)")
let levelLowestScore = 50
let levelHighestScore = 99
let levels = 10
let levelScoreDifference = levelHighestScore - levelLowestScore
let levelAverageScore = levelScoreDifference / levels
print("The level's average score is \(levelAverageScore).")
let averageLevelScore = Double(levelScoreDifference) / Double(levels)
print("The correct level's average score is \(averageLevelScore).")
