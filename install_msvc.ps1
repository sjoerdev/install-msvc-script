# installs visual studio build tools and the msvc compiler

$wingetArguments = @(
    "--silent"
    "--accept-package-agreements"
    "--accept-source-agreements"
    "--disable-interactivity"
    "--force"
)

$vsComponents = @(
    "Microsoft.VisualStudio.Workload.VCTools"
    "Microsoft.VisualStudio.Component.VC.Tools.x86.x64"
    "Microsoft.VisualStudio.Component.Windows11SDK.26100"
)

$vsOverrideArgs = @(
    $vsComponents | foreach { "--add" $_ }
    "--quiet"
    "--wait"
    "--norestart"
)
$vsOverride = $vsOverrideArgs -join " "

winget install --id "Microsoft.VisualStudio.BuildTools" @wingetArguments --override $vsOverride
