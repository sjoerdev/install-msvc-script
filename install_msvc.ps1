# installs visual studio build tools and the msvc compiler

$wingetArguments = 
@(
    "--silent",
    "--accept-package-agreements",
    "--accept-source-agreements",
    "--disable-interactivity",
    "--force"
)

winget install "Microsoft.VisualStudio.2022.BuildTools" @wingetArguments --override "--add Microsoft.VisualStudio.Workload.VCTools --includeRecommended --quiet"