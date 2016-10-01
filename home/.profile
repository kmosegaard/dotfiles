test -z "$PROFILEREAD" && . /etc/profile || true

# Python
export PATH=$PATH:$HOME/.local/bin

# .NET
export PATH=$PATH:$HOME/Apps/dotnet
export DOTNET_ROOT=$PATH:$HOME/Apps/dotnet
# Disable .NET Core telemetry
export DOTNET_CLI_TELEMETRY_OUTPUT=1

# Go
export GOPATH=~/.local/share/go

# Gradle
export PATH=$PATH:$HOME/Apps/gradle/bin

