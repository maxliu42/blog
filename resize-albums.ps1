# Album Cover Resizer Script
# Resizes all images in assets/images/albums to 600x600px
# Requires: Nothing! Uses Windows built-in .NET libraries

$sourceFolder = "assets\images\albums"
$targetSize = 600
$quality = 85

Write-Host "🎵 Resizing album covers to ${targetSize}x${targetSize}px..." -ForegroundColor Cyan

# Load necessary .NET assemblies
Add-Type -AssemblyName System.Drawing

# Get all image files
$images = Get-ChildItem -Path $sourceFolder -Include *.jpg,*.jpeg,*.png,*.webp -Recurse

foreach ($image in $images) {
    try {
        Write-Host "Processing: $($image.Name)" -ForegroundColor Yellow
        
        # Load the image
        $originalImage = [System.Drawing.Image]::FromFile($image.FullName)
        
        # Create new bitmap with target size
        $newImage = New-Object System.Drawing.Bitmap($targetSize, $targetSize)
        
        # Create graphics object for high-quality resizing
        $graphics = [System.Drawing.Graphics]::FromImage($newImage)
        $graphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
        $graphics.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::HighQuality
        $graphics.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
        $graphics.CompositingQuality = [System.Drawing.Drawing2D.CompositingQuality]::HighQuality
        
        # Draw the resized image
        $graphics.DrawImage($originalImage, 0, 0, $targetSize, $targetSize)
        
        # Dispose original image to unlock file
        $originalImage.Dispose()
        
        # Save as JPG with specified quality
        $encoder = [System.Drawing.Imaging.ImageCodecInfo]::GetImageEncoders() | Where-Object { $_.MimeType -eq 'image/jpeg' }
        $encoderParams = New-Object System.Drawing.Imaging.EncoderParameters(1)
        $encoderParams.Param[0] = New-Object System.Drawing.Imaging.EncoderParameter([System.Drawing.Imaging.Encoder]::Quality, $quality)
        
        # Determine output path (always save as .jpg)
        $outputPath = [System.IO.Path]::ChangeExtension($image.FullName, ".jpg")
        
        # Save the new image
        $newImage.Save($outputPath, $encoder, $encoderParams)
        
        # Cleanup
        $graphics.Dispose()
        $newImage.Dispose()
        
        # If we converted from PNG, delete the old PNG
        if ($image.Extension -eq ".png" -and $outputPath -ne $image.FullName) {
            Remove-Item $image.FullName
            Write-Host "  ✓ Converted PNG to JPG and deleted original" -ForegroundColor Green
        } else {
            Write-Host "  ✓ Resized" -ForegroundColor Green
        }
        
    } catch {
        Write-Host "  ✗ Error: $_" -ForegroundColor Red
    }
}

Write-Host "`n✨ Done! All album covers resized." -ForegroundColor Cyan
