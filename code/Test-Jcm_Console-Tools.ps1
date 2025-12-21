## Re-Import the module file ready for testing
Remove-Module Jcm_Console-Tools
Import-Module .\Jcm_Console-Tools.psm1

## Show console menu as a function test and also further function selection
$item = Show-ConsoleMenu -MenuTitle "Console-Tools Function Test Menu" -MenuOptions "Write-LxMessage","Write-GlyphMessage","Show-ConsoleMenu"

if ($item -eq "Show-ConsoleMenu") {
    Show-ConsoleMenu -MenuTitle "Show-ConsoleMenu Test" -MenuOptions "Apple","Banana","Orange","Pineapple","Grapefruit"
}

if ($item -eq "Write-LxMessage") {
    ## Write-LxMessage all available types
    Write-LxMessage -MessageText "This is an LxMessage DEBUG String" -MessageType Debug
    Write-LxMessage -MessageText "This is an LxMessage ERROR String" -MessageType Error
    Write-LxMessage -MessageText "This is an LxMessage FAILED String" -MessageType Failed
    Write-LxMessage -MessageText "This is an LxMessage INFO String" -MessageType Info
    Write-LxMessage -MessageText "This is an LxMessage OK String" -MessageType OK
    Write-LxMessage -MessageText "This is an LxMessage SUCCESS String" -MessageType Success
    Write-LxMessage -MessageText "This is an LxMessage WARNING String" -MessageType Warning
}

if ($item -eq "Write-GlyphMessage") {
    ## Write-GlyphMessage outputting all available options
    Write-GlyphMessage -MessageText "Diamond" -GlyphType "Diamond" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Square" -GlyphType "Square" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Blocks" -GlyphType "Blocks" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Flames" -GlyphType "Flames" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Lego" -GlyphType "Lego" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Pulse" -GlyphType "Pulse" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Radiate" -GlyphType "Radiate" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Disk" -GlyphType "Disk" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "CD" -GlyphType "CD" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "List" -GlyphType "List" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Power" -GlyphType "Power" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Time" -GlyphType "Time" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Config" -GlyphType "Config" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Repo" -GlyphType "Repo" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Folder" -GlyphType "Folder" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Cog" -GlyphType "Cog" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Sound" -GlyphType "Sound" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Atom" -GlyphType "Atom" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Windows" -GlyphType "Windows" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Tick" -GlyphType "Tick" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "DB" -GlyphType "DB" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Zoom" -GlyphType "Zoom" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Lock" -GlyphType "Lock" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Add" -GlyphType "Add" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Prompt" -GlyphType "Prompt" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Bulb" -GlyphType "Bulb" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Terraform" -GlyphType "Terraform" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Azure" -GlyphType "Azure" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Pwsh" -GlyphType "Pwsh" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Cross" -GlyphType "Cross" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Copy" -GlyphType "Copy" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Help" -GlyphType "Help" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "ThumbU" -GlyphType "ThumbU" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "ThumbD" -GlyphType "ThumbD" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "User" -GlyphType "User" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Play" -GlyphType "Play" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Stop" -GlyphType "Stop" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Enter" -GlyphType "Enter" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Chip" -GlyphType "Chip" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Cup" -GlyphType "Cup" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Box" -GlyphType "Box" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Cast" -GlyphType "Cast" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Run" -GlyphType "Run" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Key" -GlyphType "Key" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Bullet" -GlyphType "Bullet" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "TwoWay" -GlyphType "TwoWay" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Left" -GlyphType "Left" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Right" -GlyphType "Right" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Up" -GlyphType "Up" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Down" -GlyphType "Down" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Chain" -GlyphType "Chain" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Cloud" -GlyphType "Cloud" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Bolt" -GlyphType "Bolt" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Message" -GlyphType "Message" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Network" -GlyphType "Network" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "AWS" -GlyphType "AWS" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Arrows" -GlyphType "Arrows" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Target" -GlyphType "Target" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Linux" -GlyphType "Linux" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Apple" -GlyphType "Apple" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Exclaim" -GlyphType "Exclaim" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
    Write-GlyphMessage -MessageText "Attach" -GlyphType "Attach" -TimeStamp $true -GlyphColour "Yellow" -TextColour "White"
}