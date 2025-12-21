<#
    -------------------------------------------------------------------------------------------------------------
        Filename        :   ext_console_tools.psm1
    -------------------------------------------------------------------------------------------------------------
        Purpose         :   Module containing functions for some fancy console output functions involving
                            pretty colours and some novel functions to spawn menus.
    -------------------------------------------------------------------------------------------------------------
        Date            :   Sunday 7th December 2025
    -------------------------------------------------------------------------------------------------------------
        Author          :   Jamie Crookes (Exposed Technology)
    -------------------------------------------------------------------------------------------------------------
        Version         :   1.0
    -------------------------------------------------------------------------------------------------------------
        Exports         :   Write-LxMessage, Write-GlyphMessage
    -------------------------------------------------------------------------------------------------------------
#>
function Write-LxMessage {
    <###################################################################################
    .SYNOPSIS
        Write-LxMessage
    .DESCRIPTION
        This function will output a coloured message along with a status tag to the
        console.
    .PARAMETER MessageText
        [String] Text you wish to display on the console
    .PARAMETER MessageType
        [String] Message type that will be used for the tag, which chooses a 
        corresponding output colour.
    .PARAMETER TimeStamp
        [Bool] flag if you want to stamp each message with time set to true. False
        by default.
    .EXAMPLE
        Write-LxMessage -MessageText "This is a test message" -MessageText Info
    ###################################################################################>
    Param(
        [Parameter(Mandatory)]
            [string]$MessageText,                       # Text to display on console
        [ValidateSet("OK","Success","Failed","Error",   # Message type validation
                     "Info","Debug","Warning")]         # Message type validation
            [string]$MessageType = "Info",              # Type of message to display on console
            [bool]$TimeStamp = $false                   # Flag to display timestamp on console
    )
  
    ## Set the status colours and text from ValiadeSet param
    $statuses = @{
        "OK"      = @{ Colour = "Green";  Text = "    OK    " }
        "Success" = @{ Colour = "Green";  Text = " SUCCESS! " }
        "Failed"  = @{ Colour = "Red";    Text = "  FAILED  " }
        "Error"   = @{ Colour = "Red";    Text = "  ERROR!  " }
        "Info"    = @{ Colour = "Cyan";   Text = "   INFO   " }
        "Debug"   = @{ Colour = "Gray";   Text = "  DEBUG!  " }
        "Warning" = @{ Colour = "Yellow"; Text = "   WARN   " }
    }
    $status = $statuses[$MessageType]
  
    ## Print the status message
    Write-Host "[" -ForegroundColor Blue -NoNewline
    Write-Host $status.Text -ForegroundColor $status.Colour -NoNewline
    Write-Host "] " -ForegroundColor Blue -NoNewline
    if($timeStamp -eq $true) { Write-Host "$(Get-Date -format HH:mm:ss) " -ForegroundColor DarkBlue -NoNewline }
    Write-Host "$MessageText" -ForegroundColor White
}

function Write-GlyphMessage {
    <###################################################################################
    .SYNOPSIS
        Write-GlyphMessage
    .DESCRIPTION
        This function will output a coloured message along with a nerd font glyph
        to the console.
    .PARAMETER MessageText
        [String] Text you wish to display on the console.
    .PARAMETER GlyphType
        [String] Icon label to select the glyph to display.
    .PARAMETER GlyphColour
        [String] The colour of the glyph to display.
    .PARAMETER TextColour
        [String] The colour of the text to display.
    .PARAMETER TimeStamp
        [Bool] flag if you want to stamp each message with time set to true. False
        by default.
    .EXAMPLE
        Write-GlyphMessage -MessageText "This is a test message" -MessageText Tick
    .NOTES
        If you don't have a nerd font installed and selected in your terminal program
        or editor this function will output glyphs that look like crap. This function
        is cross platform too, as are the nerd fonts, so can be used with PowerShell 7
        as well as Windows PowerShell.
    ###################################################################################>
    Param(
        [Parameter(Mandatory)]
            [string]$MessageText,                       # Text of message to display in console
            [string]$GlyphType = "Diamond",             # Glyph type code to display icon
            [string]$GlyphColour = "Yellow",            # Colour of glyph to display on console
            [string]$TextColour = "White",              # Colour of text to display on console
            [bool]$TimeStamp = $false                   # Flag to display timestamp before message on console
    )

    ## Set the glyph name and corresponding icon
    $glyphs = @{
        "Diamond"   = @{ Text = "♦ " }
        "Square"    = @{ Text = "■ " }
        "Blocks"    = @{ Text = " " }
        "Flames"    = @{ Text = " " }
        "Lego"      = @{ Text = " " }
        "Pulse"     = @{ Text = " " }
        "Radiate"   = @{ Text = " " }
        "Disk"      = @{ Text = " " }
        "CD"        = @{ Text = " " }
        "List"      = @{ Text = " " }
        "Power"     = @{ Text = " " }
        "Time"      = @{ Text = " " }
        "Config"    = @{ Text = " " }
        "Repo"      = @{ Text = " " }
        "Folder"    = @{ Text = " " }
        "Cog"       = @{ Text = " " }
        "Sound"     = @{ Text = " " }
        "Atom"      = @{ Text = " " }
        "Windows"   = @{ Text = " " }
        "Tick"      = @{ Text = " " }
        "DB"        = @{ Text = " " }
        "Zoom"      = @{ Text = " " }
        "Lock"      = @{ Text = " " }
        "Add"       = @{ Text = " " }
        "Prompt"    = @{ Text = " " }
        "Bulb"      = @{ Text = " " }
        "Terraform" = @{ Text = " " }
        "Azure"     = @{ Text = " " }
        "Pwsh"      = @{ Text = " " }
        "Cross"     = @{ Text = " " }
        "Copy"      = @{ Text = " " }
        "Help"      = @{ Text = " " }
        "ThumbU"    = @{ Text = " " }
        "ThumbD"    = @{ Text = " " }
        "User"      = @{ Text = " " }
        "Play"      = @{ Text = " " }
        "Stop"      = @{ Text = " " }
        "Enter"     = @{ Text = " " }
        "Chip"      = @{ Text = " " }
        "Cup"       = @{ Text = " " }
        "Box"       = @{ Text = " " }
        "Cast"      = @{ Text = " " }
        "Run"       = @{ Text = " " }
        "Key"       = @{ Text = " " }
        "TwoWay"    = @{ Text = " " }
        "Left"      = @{ Text = " " }
        "Right"     = @{ Text = " " }
        "Up"        = @{ Text = " " }
        "Down"      = @{ Text = " " }
        "Bullet"    = @{ Text = " " }
        "Chain"     = @{ Text = " " }
        "Cloud"     = @{ Text = " " }
        "Bolt"      = @{ Text = " " }
        "Message"   = @{ Text = " " }
        "Network"   = @{ Text = " " }
        "AWS"       = @{ Text = " " }
        "Arrows"    = @{ Text = " " }
        "Target"    = @{ Text = " " }
        "Linux"     = @{ Text = " " }
        "Apple"     = @{ Text = " " }
        "Exclaim"   = @{ Text = " " }
        "Attach"    = @{ Text = " " }
    }
    $glyph = $glyphs[$GlyphType]

    ## Print the status message
    Write-Host $glyph.Text -ForegroundColor $GlyphColour -NoNewline
    if($timeStamp -eq $true) { Write-Host "$(Get-Date -format HH:mm:ss) " -ForegroundColor DarkBlue -NoNewline }
    Write-Host "$MessageText" -ForegroundColor $TextColour
}

function Show-ConsoleMenu {
    <###################################################################################
    .SYNOPSIS
        Show-ConsoleMenu
    .DESCRIPTION
        This function will generate an arrow key driven menu with title and a list of
        options provided via input parameters.
    .PARAMETER MenuTitle
        [String] The title of the menu you wish to display
    .PARAMETER MenuOptions
        [Array] A list of options to show on the menu
    .EXAMPLE
        Show-ConsoleMenu -MenuTitle "Awesome Menu" -MenuOptions "option1","option2"
    ###################################################################################>
    Param(
        [Parameter(Mandatory)]
            [string]$MenuTitle,
        [Parameter(Mandatory)]
            [string[]]$MenuOptions
    )

    ## Check for empty menu options parameter
    if (-not $MenuOptions -or $MenuOptions.Count -eq 0) {
        throw "MenuOptions cannot be empty."
    }

    ## Initialisation variables
    $maxIndex   = $MenuOptions.Count - 1    # Number of menu items accounting for 0 in the index
    $selection  = 0                         # Selected item set to first entry on initialisation

    ## Loop until a valid exit key is encountered
    while ($true) {
        ## Draw the menu title and items with formatting
        Clear-Host
        Write-Host $MenuTitle

        for ($i = 0; $i -le $maxIndex; $i++) {
            if ($i -eq $selection) {
                Write-Host -BackgroundColor Cyan -ForegroundColor Black "[ $($MenuOptions[$i]) ]"
            } else {
                Write-Host "  $($MenuOptions[$i])  "
            }
        }

        ## Scan input and register pressed key for navigation
        $keyInfo = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')

        switch ($keyInfo.VirtualKeyCode) {
            ## Enter key pressed
            13 {
                ## Return the string value from the item list entry
                return $MenuOptions[$selection]
            }
            ## Escape key pressed
            27 {
                return -1
            }
            ## Up arrow key pressed
            38 {
                $selection = if ($selection -eq 0) {
                    $maxIndex
                } else {
                    $selection - 1
                }
            }
            ## Down arrow key pressed
            40 {
                $selection = if ($selection -eq $maxIndex) {
                    0 
                } else {
                    $selection + 1
                }
            } default { }
        }
    }
}

Export-ModuleMember -Function Write-LxMessage, Write-GlyphMessage, Show-ConsoleMenu