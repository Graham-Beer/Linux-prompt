
Function Set-LinuxPrompt {
         
        # Set Linux style prompt
        function Global:prompt {

            If ($pwd.Path -eq $HOME) 
                {
                 # User home directory in Linux shown as Tilda, ~
                 $prompt = ' ~'
            }else{
                 # Linux path shown as /folder. Removed drive letter to simulate this. Root of drive defined as '/' as in Linux
                 $prompt = $(((gl).path).Remove(0,2))
            }
            <# prompt defined in sections. Linux prompt displayed as '[User@computerName path]$ '
               Used PowerShell Environment variables to define prompt. Username, Computer name, our path between to square brackets
               and Dollar '$' all concatanated together #>

            "[" + $env:USERNAME + "@" + $env:COMPUTERNAME + " $prompt"  +"]" + "$ "
        }

    }       