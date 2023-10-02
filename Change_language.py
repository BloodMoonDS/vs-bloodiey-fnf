import os
import shutil

def multiple_choice_question(question, options):
    print(question)
    for i, option in enumerate(options, start=1):
        print(f"{i}. {option}")
    
    while True:
        try:
            choice = int(input("Select an option: "))
            if 1 <= choice <= len(options):
                return options[choice - 1]
            else:
                print("Invalid choice. Please select a valid option.")
        except ValueError:
            print("Invalid input. Please enter a number.")

# Example usage:
question = "Choose Your Language to translate the mod:"
options = ["English", "Español", "日本語（機能しません"]

selected_option = multiple_choice_question(question, options)
print(f"You selected: {selected_option}")
if selected_option == "Español":
    print(f"Traduciendo Mod...")

    # Specify the paths to the source and destination folders
    source_folder = "TranslationTool/vs-bloodiey-es/data"
    destination_folder = "mods/vs-bloodiey/data"

   # Check if the source and destination folders exist
if os.path.exists(source_folder) and os.path.exists(destination_folder):
    # Iterate over the files in the source folder
    for filename in os.listdir(source_folder):
        source_file = os.path.join(source_folder, filename)
        destination_file = os.path.join(destination_folder, filename)
        
        # Check if the file exists in the source and destination
        if os.path.isfile(source_file) and os.path.isfile(destination_file):
            # Replace the file with the same name in the destination folder
            shutil.copy(source_file, destination_file)
            print(f"File '{filename}' has been replaced.")
            input("Press Enter to continue...")
else:
    print("Source or destination folder does not exist.")
    input("Press Enter to continue...")
if selected_option == "English":
    print(f"Translating Mod...")

    # Specify the paths to the source and destination folders
    source_folder = "TranslationTool/vs-bloodiey-en/data"
    destination_folder = "mods/vs-bloodiey/data"

    # Check if the source and destination folders exist
if os.path.exists(source_folder) and os.path.exists(destination_folder):
    # Iterate over the files in the source folder
    for filename in os.listdir(source_folder):
        source_file = os.path.join(source_folder, filename)
        destination_file = os.path.join(destination_folder, filename)
        
        # Check if the file exists in the source and destination
        if os.path.isfile(source_file) and os.path.isfile(destination_file):
            # Replace the file with the same name in the destination folder
            shutil.copy(source_file, destination_file)
            print(f"File '{filename}' has been replaced.")
            input("Press Enter to continue...")

else:
    print("Source or destination folder does not exist.")
    input("Press Enter to continue...")
if selected_option == "日本語（機能しません":
    print(f"日本語翻訳が機能しません!!!")
    input("Press Enter to continue...")

## source_file = "new_content.txt"
## destination_file = "file_to_replace.txt"

## shutil.copy(source_file, destination_file)
