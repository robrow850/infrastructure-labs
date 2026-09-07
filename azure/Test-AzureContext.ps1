#requires -Version 7.2
<# Read-only authentication preflight; does not sign in or deploy anything. #>
[CmdletBinding()]
param([Parameter(Mandatory)][string]$ExpectedSubscriptionId)
$ErrorActionPreference='Stop'
if(-not (Get-Command Get-AzContext -ErrorAction SilentlyContinue)){throw 'Install Az.Accounts and authenticate separately in your test environment.'}
$context=Get-AzContext
if(-not $context -or $context.Subscription.Id -ne $ExpectedSubscriptionId){throw 'Authenticated subscription does not match the intended lab'}
[pscustomobject]@{subscriptionMatches=$true;mode='read-only-preflight'}
