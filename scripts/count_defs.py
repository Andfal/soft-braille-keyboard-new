import sys

def count_definitions(content):
    lines = content.splitlines()
    count = 0
    in_header = True
    for line in lines:
        stripped = line.strip()
        if in_header:
            if stripped.startswith('#'):
                continue
            if not stripped:
                continue
            in_header = False
        
        if stripped and not stripped.startswith('#'):
            count += 1
    return count

def main():
    if len(sys.argv) < 3:
        print("Usage: count.py <path_sergio> <path_clonata>")
        return

    with open(sys.argv[1], 'r', encoding='utf-8') as f:
        sergio_count = count_definitions(f.read())
    
    with open(sys.argv[2], 'r', encoding='utf-8') as f:
        clonata_count = count_definitions(f.read())
        
    print(f"Sergio: {sergio_count}")
    print(f"Clonata: {clonata_count}")

if __name__ == "__main__":
    main()
