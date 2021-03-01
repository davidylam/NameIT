function product {
    [CmdletBinding()]
    param(
        [Parameter()]
        [cultureinfo]
        $Culture = [cultureinfo]::CurrentCulture
    )

    Resolve-LocalizedPath -ContentFile 'products.txt' -Culture $Cultuor | Get-CacheableContent | Get-Random
}
