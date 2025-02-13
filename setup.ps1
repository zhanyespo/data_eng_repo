# Define the folder structure
$folders = @(
    "clickhouse/config", "clickhouse/scripts",
    "greenplum/config", "greenplum/scripts",
    "citus/config", "citus/scripts",
    "airbyte/config",
    "nifi/config",
    "dbt/config",
    "metabase",
    "superset",
    "redash",
    "shared/data", "shared/scripts"
)

# Create folders
foreach ($folder in $folders) {
    if (!(Test-Path -Path $folder)) {
        New-Item -ItemType Directory -Path $folder | Out-Null
    }
}

# Create essential files
$files = @(
    "clickhouse/docker-compose.yml",
    "greenplum/docker-compose.yml",
    "citus/docker-compose.yml",
    "airbyte/docker-compose.yml",
    "nifi/docker-compose.yml",
    "dbt/docker-compose.yml",
    "metabase/docker-compose.yml",
    "superset/docker-compose.yml",
    "redash/docker-compose.yml",
    "docker-compose-all.yml",
    ".gitignore",
    "README.md"
)

# Create empty files
foreach ($file in $files) {
    if (!(Test-Path -Path $file)) {
        New-Item -ItemType File -Path $file | Out-Null
    }
}

Write-Output "Folder structure and essential files created successfully!"
