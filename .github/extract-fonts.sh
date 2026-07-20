#!/bin/bash

# Extract fonts.zip to a temporary location
unzip -q fonts.zip -d temp_fonts_extract

# Create fonts directory if it doesn't exist
mkdir -p fonts

# Move all extracted files to the fonts directory
mv temp_fonts_extract/* fonts/ 2>/dev/null || true

# Clean up temporary directory
rmdir temp_fonts_extract

# Remove the zip file
rm fonts.zip

echo "✓ Fonts extracted successfully!"
echo "✓ Files moved to fonts/ directory"
echo "✓ fonts.zip deleted"
