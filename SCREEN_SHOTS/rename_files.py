import os
import re

def rename_files_in_folder(folder_path):
    """
    Renames all files in the given folder to remove spaces, hyphens, and periods,
    replacing them with underscores.
    """
    if not os.path.isdir(folder_path):
        print(f"Error: Folder '{folder_path}' not found or is not a directory.")
        return

    print(f"Starting file rename process in: {folder_path}")
    
    # Counter for renamed files
    renamed_count = 0

    # Walk through all files in the directory
    for filename in os.listdir(folder_path):
        # We only process files, skipping directories
        current_path = os.path.join(folder_path, filename)
        if os.path.isdir(current_path):
            continue

        # Check if the filename contains characters to be replaced
        if re.search(r'[ \-.]', filename):
            
            # Use regex to replace all spaces, hyphens, and periods with underscores
            # The 're.sub' function is efficient for this multiple-character replacement.
            new_filename = re.sub(r'[ \-.]', '_', filename)
            
            # Remove any leading/trailing underscores that might result from the replacement
            new_filename = new_filename.strip('_')
            
            # If the filename already ends with a file extension, we need to handle 
            # the case where the extension itself might be incorrectly processed.
            # A more robust solution is often needed, but for simple files this is okay.
            
            # Construct the full path for the new filename
            new_path = os.path.join(folder_path, new_filename)

            # Check if the new name is different and doesn't conflict with an existing file
            if new_filename != filename and not os.path.exists(new_path):
                try:
                    os.rename(current_path, new_path)
                    print(f"Renamed: '{filename}' -> '{new_filename}'")
                    renamed_count += 1
                except Exception as e:
                    print(f"Could not rename '{filename}': {e}")
            elif new_filename == filename:
                pass # No change needed
            else:
                print(f"Skipped: '{filename}' because '{new_filename}' already exists.")


    print("---")
    print(f"Finished. Total files renamed: {renamed_count}")
    print("Remember to review files with complex extensions if issues arise.")

# --- Execution Block ---
if __name__ == "__main__":
    # ⚠️ IMPORTANT: Replace 'path/to/your/folder' with the actual path to the folder.
    # Example for current directory:
    # target_folder = os.getcwd() 
    
    # Example for a specific folder:
    target_folder = r'captures' # Use 'r' string for Windows paths
    
    rename_files_in_folder(target_folder)