$tab_slownik = @()                                                                    #stworzenie tablicy

$tab_slownik += New-Object psobject -Property @{"liczba" = 1; "slowo" = "jeden";}     #dopisanie 1 wartości do tablicy 
$tab_slownik += New-Object psobject -Property @{"liczba" = 3; "slowo" = "trzy";}      #dodanie kolejnej wartości

$tab_ang = @()                                                                        #stworzenie nowej tablicy

$tab_ang += New-Object psobject -Property @{"number" = 1; "word" = "one";}            #dopisanie 1 wartości do tablicy
$tab_ang += New-Object psobject -Property @{"number" = 3; "word" = "three";}          #dodanie kolejnej wartości

$result = @()                                                                         #stworzenie kolejnej tablicy-do scalania np powyższych danych


foreach ($wiersz in $tab_slownik) {                                                   #wykonaj dla kazdego wiersza z 1 tablicy
$temp_l = $null                                                                       #nie wiem po co -bez tego działa
$temp_p = $null                                                                       #nie wiem po co -bez tego działa
$temp_a = $null                                                                       #nie wiem po co -bez tego działa

$temp_l = $wiersz.liczba                                                              #do zmiennej templ_l przypisanie wartośći 
$temp_p = $wiersz.slowo
$temp_a = ($tab_ang | where {$_.number -eq $wiersz.liczba}).word

$result += New-Object psobject -Property @{"Liczba" = $temp_l; "polski" = $temp_p; "angielski" = $temp_a;}
}

$tab_slownik | ft                                                                     #rezultat 1 tablicy
$tab_ang | ft                                                                         #rezultat 2 tablicy
$result | ft                                                                          #rezultat 3 tablicy

