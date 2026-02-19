#!/usr/bin/env python3
"""
Image Merger Script
Merges two PNG images and exports the result as a JPG image.
Also supports merging JPG with PNG.
"""

import sys
import subprocess
import os
import venv as venv_module
from pathlib import Path

# Check if we're running in a virtual environment
VENV_DIR = Path(__file__).parent / "venv"
VENV_PYTHON = VENV_DIR / "bin" / "python3"

def ensure_venv():
    """Create and activate virtual environment if needed."""
    if not VENV_DIR.exists():
        print("Creating virtual environment...")
        venv_module.create(str(VENV_DIR), with_pip=True)
        print("✓ Virtual environment created\n")
    
    if not VENV_PYTHON.exists():
        print("Error: Virtual environment setup failed")
        sys.exit(1)
    
    # If we're not in the venv, re-run script with venv python
    if sys.prefix != str(VENV_DIR):
        print("Switching to virtual environment...")
        os.execv(str(VENV_PYTHON), [str(VENV_PYTHON)] + sys.argv)

# Ensure venv exists
ensure_venv()

# Auto-install Pillow if not available
try:
    from PIL import Image
except ImportError:
    print("Installing Pillow (PIL)...")
    try:
        subprocess.check_call([sys.executable, "-m", "pip", "install", "Pillow"])
        from PIL import Image
        print("✓ Pillow installed successfully!\n")
    except Exception as e:
        print(f"Error installing Pillow: {e}")
        sys.exit(1)

import os
from pathlib import Path


def merge_images(image1_path: str, image2_path: str, output_path: str, 
                image2_position: str = "center", background_color: tuple = (255, 255, 255),
                scale: float = 1.0, margin_top: int = 0, margin_left: int = 0) -> bool:
    """
    Merge two images (PNG or JPG) and export as JPG.
    
    Args:
        image1_path: Path to the background image (PNG or JPG)
        image2_path: Path to the overlay image (PNG or JPG)
        output_path: Path where the output JPG will be saved
        image2_position: Position of overlay - "center", "top-left", "top-right", 
                        "bottom-left", "bottom-right", or tuple (x, y)
        background_color: RGB tuple for background when converting PNG to JPG (default: white)
        scale: Scale factor for image1 (default: 1.0, e.g., 0.8 for 80% size)
        margin_top: Top margin/padding for image1 in pixels (default: 0)
        margin_left: Left margin/padding for image1 in pixels (default: 0)
    
    Returns:
        bool: True if successful, False otherwise
    """
    try:
        # Validate input files exist
        if not os.path.exists(image1_path):
            print(f"Error: Image file not found at {image1_path}")
            return False
        
        if not os.path.exists(image2_path):
            print(f"Error: Image file not found at {image2_path}")
            return False
        
        # Open images
        print(f"Loading background image from {image1_path}...")
        image1 = Image.open(image1_path)
        
        # Get original dimensions
        original_width, original_height = image1.size
        
        # Resize image1 if scale is not 1.0
        if scale != 1.0:
            new_width = int(original_width * scale)
            new_height = int(original_height * scale)
            print(f"Scaling image1 from {original_width}x{original_height} to {new_width}x{new_height}...")
            image1 = image1.resize((new_width, new_height), Image.Resampling.LANCZOS)
        
        # Convert image1 to RGB for JPG compatibility
        if image1.mode == "RGBA":
            # Create white background for transparent areas
            background = Image.new("RGB", image1.size, background_color)
            background.paste(image1, mask=image1.split()[3])  # Use alpha channel as mask
            image1 = background
        else:
            image1 = image1.convert("RGB")
        
        # Load overlay image (keeping its original size)
        print(f"Loading overlay image from {image2_path}...")
        image2 = Image.open(image2_path).convert("RGBA")
        img2_width, img2_height = image2.size
        
        print(f"Overlay image size (original, no scaling): {img2_width}x{img2_height}")
        print(f"Background image size (scaled): {image1.size[0]}x{image1.size[1]}")
        
        # Create final canvas using image2's size (output size)
        canvas = Image.new("RGB", (img2_width, img2_height), background_color)
        
        # Paste scaled image1 onto canvas
        img1_width, img1_height = image1.size
        
        # Calculate position for image1 on the canvas
        if margin_top > 0 or margin_left > 0:
            # If margin is specified, use it; otherwise center
            x1 = margin_left if margin_left > 0 else (img2_width - img1_width) // 2
            y1 = margin_top if margin_top > 0 else (img2_height - img1_height) // 2
            # Make sure image1 fits
            if y1 + img1_height > img2_height:
                y1 = max(0, img2_height - img1_height)
            if x1 + img1_width > img2_width:
                x1 = max(0, img2_width - img1_width)
        else:
            # Default to center
            x1 = (img2_width - img1_width) // 2
            y1 = (img2_height - img1_height) // 2
        
        # Ensure position is within bounds
        x1 = max(0, min(x1, img2_width - img1_width))
        y1 = max(0, min(y1, img2_height - img1_height))
        
        print(f"Placing scaled image1 at position ({x1}, {y1})...")
        
        # Paste image1 onto canvas
        canvas.paste(image1, (x1, y1))
        
        # Now paste image2 (overlay) onto the canvas using alpha channel as mask
        print(f"Pasting overlay image on top...")
        canvas.paste(image2, (0, 0), image2)
        
        # Create output directory if it doesn't exist
        output_dir = os.path.dirname(output_path)
        if output_dir and not os.path.exists(output_dir):
            os.makedirs(output_dir)
            print(f"Created output directory: {output_dir}")
        
        # Save as JPG
        print(f"Saving merged image to {output_path}...")
        canvas.save(output_path, "JPEG", quality=95)
        
        print(f"✓ Successfully merged images and saved to {output_path}")
        return True
    
    except Exception as e:
        print(f"Error during image merge: {str(e)}")
        return False


def merge_images_resize(image1_path: str, image2_path: str, output_path: str, 
                       image2_size: tuple = None, image2_position: str = "center",
                       background_color: tuple = (255, 255, 255)) -> bool:
    """
    Merge two images with automatic overlay resizing.
    
    Args:
        image1_path: Path to the background image (PNG or JPG)
        image2_path: Path to the overlay image (PNG or JPG)
        output_path: Path where the output JPG will be saved
        image2_size: Tuple (width, height) to resize overlay to. If None, keeps original size.
        image2_position: Position of overlay image
        background_color: RGB tuple for background when converting PNG to JPG (default: white)
    
    Returns:
        bool: True if successful, False otherwise
    """
    try:
        # Validate input files exist
        if not os.path.exists(image1_path):
            print(f"Error: Image file not found at {image1_path}")
            return False
        
        if not os.path.exists(image2_path):
            print(f"Error: Image file not found at {image2_path}")
            return False
        
        # Open images
        print(f"Loading background image from {image1_path}...")
        image1 = Image.open(image1_path)
        
        # Convert image1 to RGB for JPG compatibility
        if image1.mode == "RGBA":
            background = Image.new("RGB", image1.size, background_color)
            background.paste(image1, mask=image1.split()[3])
            image1 = background
        else:
            image1 = image1.convert("RGB")
        
        print(f"Loading overlay image from {image2_path}...")
        image2 = Image.open(image2_path).convert("RGBA")
        
        img1_width, img1_height = image1.size
        
        # Resize overlay if size is specified
        if image2_size:
            print(f"Resizing overlay to {image2_size[0]}x{image2_size[1]}...")
            image2 = image2.resize(image2_size, Image.Resampling.LANCZOS)
        
        img2_width, img2_height = image2.size
        
        print(f"Background image size: {img1_width}x{img1_height}")
        print(f"Overlay image size (after resize): {img2_width}x{img2_height}")
        
        # Calculate position for overlay
        if isinstance(image2_position, tuple):
            x, y = image2_position
        elif image2_position.lower() == "center":
            x = (img1_width - img2_width) // 2
            y = (img1_height - img2_height) // 2
        elif image2_position.lower() == "top-left":
            x, y = 0, 0
        elif image2_position.lower() == "top-right":
            x = img1_width - img2_width
            y = 0
        elif image2_position.lower() == "bottom-left":
            x = 0
            y = img1_height - img2_height
        elif image2_position.lower() == "bottom-right":
            x = img1_width - img2_width
            y = img1_height - img2_height
        else:
            x = (img1_width - img2_width) // 2
            y = (img1_height - img2_height) // 2
        
        # Ensure position is within bounds
        x = max(0, min(x, img1_width - img2_width))
        y = max(0, min(y, img1_height - img2_height))
        
        print(f"Merging images at position ({x}, {y})...")
        
        # Paste overlay onto background using alpha channel as mask
        image1.paste(image2, (x, y), image2)
        
        # Create output directory if it doesn't exist
        output_dir = os.path.dirname(output_path)
        if output_dir and not os.path.exists(output_dir):
            os.makedirs(output_dir)
            print(f"Created output directory: {output_dir}")
        
        # Save as JPG
        print(f"Saving merged image to {output_path}...")
        image1.save(output_path, "JPEG", quality=95)
        
        print(f"✓ Successfully merged images and saved to {output_path}")
        return True
    
    except Exception as e:
        print(f"Error during image merge: {str(e)}")
        return False


def batch_merge_screenshots(folder_path: str, template_path: str, output_dir: str,
                            scale: float, margin_top: int, margin_left: int,
                            quality: int) -> bool:
    """
    Find all images starting with 'Simulator_Screenshot' in a folder and merge them with a template.
    
    Args:
        folder_path: Path to folder containing screenshot images
        template_path: Path to the template/overlay image (e.g., iphoneTemplate.png.png)
        output_dir: Directory to save output files (default: same as folder_path)
        scale: Scale factor for screenshots (default: 0.922)
        margin_top: Top margin in pixels (default: 145)
        margin_left: Left margin in pixels (default: 67)
        quality: JPEG quality 1-100 (default: 95)
    
    Returns:
        bool: True if at least one image was processed successfully
    """
    try:
        # Validate inputs
        if not os.path.isdir(folder_path):
            print(f"Error: Folder not found at {folder_path}")
            return False
        
        if not os.path.exists(template_path):
            print(f"Error: Template file not found at {template_path}")
            return False
        
        # Set output directory
        if output_dir is None:
            output_dir = folder_path
        elif not os.path.exists(output_dir):
            os.makedirs(output_dir)
            print(f"Created output directory: {output_dir}")
        
        # Find all Simulator_Screenshot images
        screenshot_files = []
        for filename in os.listdir(folder_path):
            if filename.startswith("Simulator_Screenshot"):
                # Check for proper extensions or files ending with _png, _jpg, etc.
                if (filename.lower().endswith(('.png', '.jpg', '.jpeg')) or 
                    filename.lower().endswith(('_png', '_jpg', '_jpeg'))):
                    screenshot_files.append(filename)
        
        if not screenshot_files:
            print(f"No Simulator_Screenshot images found in {folder_path}")
            return False
        
        screenshot_files.sort()
        
        print(f"\n{'='*70}")
        print("Batch Image Merger - Processing Simulator Screenshots")
        print(f"{'='*70}")
        print(f"Folder: {folder_path}")
        print(f"Template: {template_path}")
        print(f"Output directory: {output_dir}")
        print(f"Found {len(screenshot_files)} screenshot(s) to process")
        print(f"Settings: scale={scale}, margin_top={margin_top}px, margin_left={margin_left}px")
        print(f"{'='*70}\n")
        
        success_count = 0
        failed_count = 0
        
        for i, filename in enumerate(screenshot_files, 1):
            screenshot_path = os.path.join(folder_path, filename)
            
            # Check if file needs extension fix (ends with _png, _jpg, etc.)
            temp_file_path = None
            if filename.lower().endswith(('_png', '_jpg', '_jpeg')):
                # Create a temporary file with proper extension
                if filename.lower().endswith('_png'):
                    proper_ext = '.png'
                elif filename.lower().endswith('_jpg'):
                    proper_ext = '.jpg'
                else:
                    proper_ext = '.jpeg'
                
                temp_file_path = screenshot_path + proper_ext
                # Create a symlink or copy to proper extension
                if not os.path.exists(temp_file_path):
                    import shutil
                    shutil.copy2(screenshot_path, temp_file_path)
                screenshot_path = temp_file_path
            
            # Generate output filename
            name_without_ext = os.path.splitext(filename)[0]
            # Remove trailing _png, _jpg, etc. from name if present
            for ext_suffix in ['_png', '_jpg', '_jpeg']:
                if name_without_ext.lower().endswith(ext_suffix):
                    name_without_ext = name_without_ext[:-len(ext_suffix)]
                    break
            
            output_filename = f"output_{name_without_ext}.jpg"
            output_path = os.path.join(output_dir, output_filename)
            
            print(f"[{i}/{len(screenshot_files)}] Processing: {filename}")
            print(f"    Output: {output_filename}")
            
            # Merge images
            success = merge_images(
                screenshot_path, 
                template_path, 
                output_path,
                scale=scale,
                margin_top=margin_top,
                margin_left=margin_left
            )
            
            if success:
                success_count += 1
            else:
                failed_count += 1
            
            # Clean up temporary file if created
            if temp_file_path and os.path.exists(temp_file_path):
                os.remove(temp_file_path)
            
            print()  # Add blank line between files
        
        print(f"{'='*70}")
        print("Batch Processing Complete")
        print(f"  Successful: {success_count}")
        print(f"  Failed: {failed_count}")
        print(f"{'='*70}\n")
        
        return success_count > 0
    
    except Exception as e:
        print(f"Error during batch processing: {str(e)}")
        return False


if __name__ == "__main__":
    import argparse
    
    parser = argparse.ArgumentParser(
        description="Merge images (PNG/JPG) and export as JPG. Supports single file or batch processing.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  # Single file mode
  python3 image_merger.py screenshot1.png iphoneTemplate.png.png output.jpg
  python3 image_merger.py screenshot1.png iphoneTemplate.png.png output.jpg --scale 0.9 --margin-top 50
  
  # Batch mode - process all Simulator_Screenshot images in a folder
  python3 image_merger.py --batch vi iphoneTemplate.png.png
  python3 image_merger.py --batch vi iphoneTemplate.png.png --output-dir outputs
  python3 image_merger.py --batch zh iphoneTemplate.png.png --scale 0.9 --margin-top 100
        """
    )
    
    parser.add_argument("--batch", action="store_true",
                        help="Batch mode: process all Simulator_Screenshot images in a folder")
    parser.add_argument("image1", help="Path to background image or folder (if --batch)")
    parser.add_argument("output", nargs="?", help="Path to output JPG file (not used in batch mode)")
    parser.add_argument("--output-dir", help="Output directory for batch mode (default: same as input folder)")
    parser.add_argument("--position", default="center", 
                        choices=["center", "top-left", "top-right", "bottom-left", "bottom-right"],
                        help="Position of overlay image (default: center)")
    parser.add_argument("--scale", type=float, default=0.945,
                        help="Scale factor for background image (default: 0.922, e.g., 0.9 for 90%% size)")
    parser.add_argument("--margin-top", type=int, default=195,
                        help="Top margin/padding for background image in pixels (default: 145)")
    parser.add_argument("--margin-left", type=int, default=90,
                        help="Left margin/padding for background image in pixels (default: 67)")
    parser.add_argument("--quality", type=int, default=100,
                        help="JPEG quality 1-100 (default: 95)")
    
    args = parser.parse_args()
    
    # Validate scale and quality
    if not (0.1 <= args.scale <= 5.0):
        print("Error: scale must be between 0.1 and 5.0")
        sys.exit(1)
    
    if not (1 <= args.quality <= 100):
        print("Error: quality must be between 1 and 100")
        sys.exit(1)
    
    if args.margin_top < 0:
        print("Error: margin-top must be >= 0")
        sys.exit(1)
    
    if args.margin_left < 0:
        print("Error: margin-left must be >= 0")
        sys.exit(1)
    
    # Check mode: batch or single file
    if args.batch:
        # Batch mode
        folder_path = args.image1
        template_path = "iphoneTemplate.png"
        output_dir = args.output_dir
        
        batch_merge_screenshots(
            folder_path,
            template_path,
            output_dir,
            scale=args.scale,
            margin_top=args.margin_top,
            margin_left=args.margin_left,
            quality=args.quality
        )
    else:
        # Single file mode
        if not args.output:
            print("Error: output file path is required in single file mode")
            sys.exit(1)
        
        print(f"\n{'='*60}")
        print("Image Merger Script")
        print(f"{'='*60}")
        print(f"Background image: {args.image1}")
        print(f"Overlay image: {args.image2}")
        print(f"Output file: {args.output}")
        print(f"Position: {args.position}")
        print(f"Scale: {args.scale}")
        print(f"Margin top: {args.margin_top}px")
        print(f"Margin left: {args.margin_left}px")
        print(f"Quality: {args.quality}")
        print(f"{'='*60}\n")
        
        # Run the merge
        merge_images(args.image1, args.image2, args.output, args.position, 
                    scale=args.scale, margin_top=args.margin_top, margin_left=args.margin_left)
