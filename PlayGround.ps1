<#
.SYNOPSIS
   This is just a playgound.. 
.DESCRIPTION
   Nothing of big interest. 

   Feel free to check out and add whatever to it.

.PARAMETER <paramName>
   <Description of script parameter>
.EXAMPLE
   <An example of using the script>
.LINK
	<A list of links where this resource was found>
.EXTRACODE
	<Any extra code that is good for learning>
#>

# get ALL
# Edit : Adi - not true
$webApps = Get-SPWebApplication

Clear-Host
foreach($eachSite in $webApps)
{
    Write-Host "This is $eachSite, $($eachSite.Id)" -ForegroundColor Green

    foreach($eachSiteCollection in $eachSite.Sites)
    {
        Write-Host "`tThis is site collection: $eachSiteCollection, $($eachSiteCollection.ID)" -ForegroundColor Yellow

        foreach($eachSiteCollectionWeb in $eachSiteCollection.AllWebs)
        {
            Write-Host "`t`tThis is site collection web: $eachSiteCollectionWeb, Id = $($eachSiteCollection.ID)" -ForegroundColor Cyan

            <#
            foreach($user in $eachSiteCollectionWeb.Users)
            {
                Write-Host "`t`t`tUser: $user" -ForegroundColor Magenta
            }

            foreach($group in $eachSiteCollectionWeb.Groups)
            {
                Write-Host "`t`t`t`tGroups include: $group" -ForegroundColor Gray
            }
            #>

        }
    }
}
