###############################################################################
# Environment variables and PATH
# Requires /Modules/DevEnvironment/DevEnvironment.psm1
###############################################################################
Import-Module DevEnvironment

###############################################################################
# Git aliases
# Requires /Modules/DevFunctions/DevFunctions.psm1
###############################################################################
Import-Module DevFunctions


###############################################################################
# Added by PoshGit
###############################################################################
Rename-Item Function:\Prompt PoshGitPrompt -Force
function Prompt() {if(Test-Path Function:\PrePoshGitPrompt){++$global:poshScope; New-Item function:\script:Write-host -value "param([object] `$object, `$backgroundColor, `$foregroundColor, [switch] `$nonewline) " -Force | Out-Null;$private:p = PrePoshGitPrompt; if(--$global:poshScope -eq 0) {Remove-Item function:\Write-Host -Force}}PoshGitPrompt}
