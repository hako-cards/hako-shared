import XCTest
@testable import HakoShared

final class CodableTests: XCTestCase {
    func testCardIconUnknownCodable() throws {
        struct Container: Codable {
            var icon: CardIcon
        }

        let data = "{\"icon\": \"foobarbaz\"}".data(using: .utf8)!
        let container: Container = try JSONDecoder().decode(Container.self, from: data)
        XCTAssertEqual(container.icon, .unknown)
    }

    func testCardIconKnownCodable() throws {
        struct Container: Codable {
            var icon: CardIcon
        }

        let data = "{\"icon\": \"silver\"}".data(using: .utf8)!
        let container: Container = try JSONDecoder().decode(Container.self, from: data)
        XCTAssertEqual(container.icon, .silver)
    }

    func testSystemColorUnknownCodable() throws {
        struct Container: Codable {
            var color: SystemColor
        }

        let data = "{\"color\": \"foobarbaz\"}".data(using: .utf8)!
        let container: Container = try JSONDecoder().decode(Container.self, from: data)
        XCTAssertEqual(container.color, .foregound)
    }

    func testSystemColorKnownCodable() throws {
        struct Container: Codable {
            var color: SystemColor
        }

        let data = "{\"color\": \"blue\"}".data(using: .utf8)!
        let container: Container = try JSONDecoder().decode(Container.self, from: data)
        XCTAssertEqual(container.color, .blue)
    }
}
