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

    func testFailableEncodeDecode() throws {
        let points = Point(
            multiplier: 1,
            attributes: [.applePay, .caveat("Hello")],
            kind: .rotating(.init(
                start: .now,
                end: .now,
                activateBy: nil
            ))
        )

        let data = try JSONEncoder().encode(points)
        let decoded = try JSONDecoder().decode(Point.self, from: data)

        XCTAssertEqual(points, decoded)
    }

    func testFailableDecoding() throws {
        var points = Point(
            multiplier: 1,
            attributes: [.applePay, .caveat("Hello")],
            kind: .rotating(.init(
                start: .now,
                end: .now,
                activateBy: nil
            ))
        )

        points.kind = nil

        let json = """
        {
          "multiplier": 1,
          "attributes": [
            {
              "applePay": {}
            },
            {
              "caveat": {
                "_0": "Hello"
              }
            },
            {
              "ohNoUnknownnn": {}
            }
          ],
          "kind": "garbage"
        }
        """

        let data = json.data(using: .utf8)!
        let decoded = try JSONDecoder().decode(Point.self, from: data)

        XCTAssertEqual(points, decoded)
    }
}
