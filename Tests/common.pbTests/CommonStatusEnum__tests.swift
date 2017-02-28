import Protos
import XCTest


class CommonPBTests : XCTestCase{

    /*
         As a developer when I use Common_Status enum
         I expect the cases associated with the enum
         maps to the equivalent raw value.
    */
    func test__Common_StatusEnum_raw_value_equivalent(){

        XCTAssertEqual(Common_Status.unknown,0)
    }

    /*
         As a developer when I use Common_HeaderType enum
         I expect the cases associated with the enum
         maps to the equivalent raw value.
    */


}