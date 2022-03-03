param(
    [ValidatePattern('AC|DC')]$ACorDC, 
    $QueryString
)
[int](Invoke-Expression -Command "powercfg.exe /query $QueryString" | Where-Object{$_ -like "*Current $($ACorDC)*"}).Replace("    Current $ACorDC Power Setting Index: ",'')