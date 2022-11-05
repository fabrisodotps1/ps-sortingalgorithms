<#
    .SYNOPSIS
    Sorts an integer array with the insertion sort algorithm.
    .DESCRIPTION
    Sorts an integer array with the insertion sort algorithm.
    .PARAMETER ToSort
    Specifies the array with integer values to sort. 
    For example: 8,3,2,9,5
    .PARAMETER Start
    Specifies where to start the sorting in the array (index).
    .PARAMETER End
    Specifies where to start the sorting in the array (index).
    .OUTPUTS
    Sorted integer array
    .EXAMPLE
    PS> InsertionSort.ps1 -ToSort 4,2,3,1
    1
    2
    3
    4
    .LINK
    https://github.com/fabrisodotps1/ps-sortingalgorithms
#>
[CmdletBinding()]
param(
    [Parameter(Mandatory=$false)]
    [int[]]$ToSort = @(1,4,2,3,80,70,3,5),
    [Parameter(Mandatory=$false)]
    [int]$Start = 0,
    [Parameter(Mandatory=$false)]
    [int]$End = $ToSort.Length - 1
)

##############################################################
### Variables                                              ###
##############################################################

##############################################################
### Functions                                              ###
##############################################################

function New-InsertionSort {
    [CmdletBinding()]
    param(
        [Array]$ToSort,
        [int]$Start,
        [int]$End
    )

    for ($i = $Start; $i -le $End; $i++) {
        $j = $i
        $x = $ToSort[$i]

        while ($j -gt $start -and $x -lt $ToSort[$j - 1]) {
            $ToSortNew = $j - 1
            $ToSort[$j] = $ToSort[$ToSortNew];
            $j = $j - 1
        }
            
        $ToSort[$j] = $x;
    }
    return $ToSort
}

##############################################################
### Main                                                   ###
##############################################################

New-InsertionSort -ToSort $ToSort -Start $Start -End $End