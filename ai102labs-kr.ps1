# Define the list of GitHub repositories
$repos = @(
    "https://github.com/MicrosoftLearning/mslearn-ai-services.ko-kr.git",
    "https://github.com/MicrosoftLearning/mslearn-ai-vision.ko-kr.git",
    "https://github.com/MicrosoftLearning/mslearn-ai-language.ko-kr.git"
    "https://github.com/MicrosoftLearning/mslearn-ai-document-intelligence.ko-kr.git",
    "https://github.com/MicrosoftLearning/mslearn-knowledge-mining.ko-kr.git",
    "https://github.com/MicrosoftLearning/mslearn-openai.ko-kr.git"
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
