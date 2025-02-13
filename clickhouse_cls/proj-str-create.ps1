# PowerShell script to create the project structure

$basePath = "clickh-vict-mb-swfs"
$folders = @(
    "$basePath",
    "$basePath\config",
    "$basePath\config\clickhouse",
    "$basePath\config\victoria-metrics",
    "$basePath\config\seaweedfs"
)

$files = @(
    "$basePath\docker-compose.yml",
    "$basePath\.env",
    "$basePath\README.md",
    "$basePath\config\clickhouse\config.xml",
    "$basePath\config\clickhouse\users.xml",
    "$basePath\config\clickhouse\metrika.xml",
    "$basePath\config\victoria-metrics\vmstorage.yml",
    "$basePath\config\seaweedfs\master.toml",
    "$basePath\config\seaweedfs\volume.toml"
)

# Create directories
foreach ($folder in $folders) {
    if (!(Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder -Force | Out-Null
    }
}

# Create files
foreach ($file in $files) {
    if (!(Test-Path $file)) {
        New-Item -ItemType File -Path $file -Force | Out-Null
    }
}

Write-Output "Project structure created successfully!"
