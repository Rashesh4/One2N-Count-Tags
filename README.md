1. **Download the Nuclei Templates Archive:**

    Run the following command to download the templates archive:

    ```bash
    wget https://github.com/projectdiscovery/nuclei-templates/archive/refs/tags/v9.7.8.tar.gz
    ```

2. **Extract the Archive:**

    Extract the `.tar.gz` file into a directory:

    ```bash
    tar -xvf v9.7.8.tar.gz
    ```

3. **Run the Tag Counting Script:**

    After extracting the archive, run the provided `count_tags.sh` script:

    ```bash
    bash count_tags.sh
    ```

4. **Expected Output:**

    The script will list the top 5 most common tags along with their count, for example:

    ```
    2388 cve
    1093 panel
    954 wordpress
    892 xss
    892 exposure
    ```

## How the Script Works

1. **grep -hr "tags:"**: Recursively searches for lines containing the `tags:` keyword in all files within the `nuclei-templates-9.7.8` directory.

2. **sed 's/tags: //'**: Removes the `tags:` prefix.

3. **tr -d ' '**: Removes all unncessary spaces.

4. **tr ',' '\n'**: Converts comma-separated tags into new lines.

5. **sort | uniq -c**: Sorts the tags and counts occurrences.

6. **sort -nr | head -n 5**: Sorts in reverse order by count and displays the top 5.
