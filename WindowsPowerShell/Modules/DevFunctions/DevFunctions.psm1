###############################################################################
# Git aliases
###############################################################################
function gpull{git pull --rebase}
function gsub{git submodule update --init --recursive}
function gflowrelease{
	param (
	[Parameter(Mandatory=$True,Position=1)]
	[string]$newTag
	)
	git checkout production
	git pull --rebase origin production
	git flow release start $newTag
	git flow release finish $newTag
}

###############################################################################
# Build functions
###############################################################################