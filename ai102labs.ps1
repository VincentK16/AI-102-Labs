# Define the list of GitHub repositories
$repos = @(
    "https://github.com/MicrosoftLearning/mslearn-ai-services.git",
    "https://github.com/MicrosoftLearning/mslearn-ai-vision.git",
    "https://github.com/MicrosoftLearning/mslearn-ai-language.git"
    "https://github.com/MicrosoftLearning/mslearn-ai-document-intelligence.git",
    "https://github.com/MicrosoftLearning/mslearn-knowledge-mining.git",
    "https://github.com/MicrosoftLearning/mslearn-openai.git"
)

# Create the directory if it doesn't exist
if (!(Test-Path -Path "AI-102 Labs")) {
    New-Item -ItemType directory -Path "AI-102 Labs"
}

# Change to the directory
Set-Location -Path "AI-102 Labs"

# Loop through the repositories and clone each one
foreach ($repo in $repos) {
    git clone $repo
}
