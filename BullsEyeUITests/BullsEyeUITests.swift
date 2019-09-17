import XCTest

class BullsEyeUITests: XCTestCase {

    override func setUp() {
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
    }

    override func tearDown() {

    }

  // IOS UI Testing follows the same process
  // as Selenium Testing:
  // 1. FIND THE ELEMENT
  //    - Button <button>, TextBox <input>, Link <a>
  // 2. DO SOMETHING WITH THE ELEMENT
  //    - click() --> click on the element
  //    - sendKeys() --> typing into the element
  
  
  // T1: When person presses the Hit Me button,
  // they should see a popup box
  func testPressingHitMeShowsAlertBox() {
    
    // 0. Get a reference to the app
    let app = XCUIApplication()
    
    // 1. Find the Hit Me Button
    let hitMeButton = app.buttons["hit me!"]
    
    // 2. Check that the hit me button exists
    XCTAssertEqual(true, hitMeButton.exists)
    
    // 3. Click on the Hit Me Button
    hitMeButton.tap()
    
    // 4. Check that an alert appears (popup box)
    //      - (does the alert box exist?)
    
    // 4a.  Get the alert box
    let alertBox = app.alerts
    // 4b. Check that it exists
    XCTAssertNotNil(alertBox)
  }
  
  // T2: By default, label at top of screen says
  // "Get as close as you can to:"
  func testDefaultLabelCode() {
    // 1. find the label at the top
    // 2. check that it exists
    // 3. check that the text in the label matches
    // what you expect "Get as close as you can to:"
    
    
    
  }
  
  // T3: Pressing the Start Over button resets the
  // Score and Round label text
  func testStartOverButton() {
    
  }
  
  // T4: Pressing the TYPE button updates the
  // label at top of screen to say:
  // "Guess where the slider is:"
  func testTypeGameMode() {
    
    
    let app = XCUIApplication()
    let typeButton = app.buttons["Type"]
    XCTAssertEqual(true, typeButton.exists)
    typeButton.tap()
    let
  }
  
  // T5: Pressing the SLIDE button updates the
  // game to the default mode
  func testSlideGameMode() {
    
  }
  

}
