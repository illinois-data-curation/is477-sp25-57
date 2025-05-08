rule all:
    input:
        "group_57_final_project_output.html"

rule run_analysis:
    input:
        notebook = "Group_57_Final_Project_Code.ipynb",
        data = "House_price_multifeatures.csv"
    output:
        "group_57_final_project_output.html"
    shell:
        "jupyter nbconvert --execute --to html {input.notebook} --output {output}"