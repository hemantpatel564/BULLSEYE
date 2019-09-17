import XCTest

// 1. Tell the test case about what project you want to test
// Give this file access to the functions and variables in the project
@testable import BullsEye

class BullsEyeTests: XCTestCase {

    // 2. Create the global variable for BullsEyeGame
    //       -JAVA: BullEyesGame game;
    var game: BullsEyeGame!
  
    override func setUp() {
      super.setUp()
      // 3. Initialize the global variable
      // -  JAVA: game = new BullEyeGame();
      game = BullsEyeGame();
    }

    override func tearDown() {
      // 4. close the game
      game = nil
      super.tearDown()
    }

  // R1: Test that a new game is started correctly
  // Expect output - round = 1, totalPoints = 0
  // Expected output is actually that round = 1, not 0
  func testStartNewGame() {
    // 1. Start a new game
    game.startNewGame()
    // 2. Check that starting round number = 1
    XCTAssertEqual(1, game.round)
    // 3. Check that total starting points = 0
    XCTAssertEqual(0, game.scoreTotal)
  }
  
  // R2: Test that a new round gets created
  // - A1: Current round counter increases by 1
  // - A2: Points for current round = 0
  // - A3: new random target nubmer is gneerated
  func testStartNewRound() {
    // 1. Start a new game
    // ----------------------
    game.startNewGame()
    let initialRoundNumber = 1
    let initialRoundPoints = 0
    let initialTargetNumber = game.targetValue
    
    // tests to check the initial state of the game
    XCTAssertEqual(initialRoundNumber, game.round)
    XCTAssertEqual(initialRoundPoints, game.scoreRound)
    
    // 2. Start a new round
    // ----------------------
    game.startNewRound()
    
    // 3. Check the current round number
    // -------------------------
    XCTAssertEqual(initialRoundNumber+1, game.round)
    
    // 4. Check the points for the round
    // -------------------------
    XCTAssertEqual(0, game.scoreRound)
    
    // 5. Check that you have a random number as the target
    // -------------------------
    // check the new target number is different from initial target number
    XCTAssertNotEqual(initialTargetNumber, game.targetValue)
    
  }
  
}
