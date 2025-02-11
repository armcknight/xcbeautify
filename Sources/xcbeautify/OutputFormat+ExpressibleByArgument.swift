#if compiler(>=6.0)
public import ArgumentParser
#else
import ArgumentParser
#endif
import XcbeautifyLib

extension XcbeautifyLib.Renderer: ExpressibleByArgument {
    var defaultValueDescription: String {
        switch self {
        case .terminal:
            "Local"
        case .gitHubActions:
            "GitHub actions (`GITHUB_ACTIONS` is defined as `true`)"
        case .teamcity:
            "TeamCity (`TEAMCITY_VERSION` is not `nil`)"
        case .azureDevOpsPipelines:
            "Azure DevOps Pipelines (`AZURE_DEVOPS_PIPELINES` is not `nil`)"
        }
    }
}
