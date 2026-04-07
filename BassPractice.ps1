param(
    [parameter()][Alias("#","A")][switch]$Accidentals,
    [parameter()][Alias("F")][switch]$Fret,
    [parameter()][Alias("C")][switch]$Challenge
)
if(!$Fret){
    if(!$Accidentals){
        $Choice = @("A","B","C","D","E","F","G") | Get-Random
    } else {
        $Choice = @("A","B","C","D","E","F","G","A#","C#","D#","F#","G#") | Get-Random
    }
} else {
    $String = @("E","A","D","G") | Get-Random
    $FretChoice = @("1".."20") | Get-Random
    $Choice = "$String $FretChoice"
}
if($Challenge){
    $RandomFret = Get-random -Maximum 15 -Minimum 2
    $ChallengeChoice = @("start below the 5th fret","start below the 12th fret","start below fret $RandomFret","start at the end and play backwards","play only every other note","play only every third note","play all on one string") | Get-Random
}

Write-host "$Choice $ChallengeChoice"
