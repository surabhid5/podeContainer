Import-Module Pode

Start-PodeServer {
    # Add a route to serve the HTML file
    Add-PodeEndpoint -Address * -Port 80 -Protocol Http
    Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
        Write-PodeJsonResponse -Value @{ 'value' = 'Hello, world!' }
    }
}