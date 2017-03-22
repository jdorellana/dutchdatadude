﻿#ConfigureMDS

#source: 
Function ConfigureMDS
{
    Param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        $Password
    )
    Write-Log -Verbose  "Step 10: Configure MDS"
    if ($global:DoAllTasks) {
        Set-Restart-AndResume $global:script "12"
        }
    }
    catch {
        Write-Log -Verbose  "Failed to configure MDS. Error: $_.Exception.Message"
    }
}