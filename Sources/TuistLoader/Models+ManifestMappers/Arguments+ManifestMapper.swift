import Foundation
import ProjectDescription
import TuistCore
import TuistGraph

extension TuistGraph.Arguments {
    /// Maps a ProjectDescription.Arguments instance into a TuistGraph.Arguments instance.
    /// - Parameters:
    ///   - manifest: Manifest representation of arguments model.
    ///   - generatorPaths: Generator paths.
    static func from(manifest: ProjectDescription.Arguments) -> TuistGraph.Arguments {
        Arguments(
            environmentVariables: manifest.environmentVariables.map(EnvironmentVariable.from),
            launchArguments: manifest.launchArguments.map(LaunchArgument.from)
        )
    }
}
