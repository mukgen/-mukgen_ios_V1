import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.framework(
    name: "MealSaggestionService",
    dependencies: [
        .Module.mukgenKit,
        .Module.thirdPartyLib
    ]
)
