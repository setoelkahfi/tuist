import Foundation
import XCTest

@testable import TuistGraph
@testable import TuistSupportTesting

final class RunActionTests: TuistUnitTestCase {
    func test_codable() {
        // Given
        let subject = RunAction(
            configurationName: "name",
            executable: .init(
                projectPath: "/path/to/project",
                name: "name"
            ),
            filePath: "/path/to/file",
            arguments: .init(
                environmentVariables: [
                    .init(
                        key: "key",
                        value: "value",
                        isEnabled: true
                    ),
                ],
                launchArguments: [
                    .init(
                        name: "name",
                        isEnabled: true
                    ),
                ]
            ),
            options: .init(),
            diagnosticsOptions: [
                .mainThreadChecker,
            ]
        )

        // Then
        XCTAssertCodable(subject)
    }
}
