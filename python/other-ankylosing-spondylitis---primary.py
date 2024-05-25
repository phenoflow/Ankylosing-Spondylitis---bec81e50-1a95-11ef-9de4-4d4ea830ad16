# Sara Muller, Samantha L Hider, Karim Raza, Rebecca J Stack, Richard A Hayward, Christian D Mallen, 2024.

import sys, csv, re

codes = [{"code":"N085S00","system":"readv2"},{"code":"N085F00","system":"readv2"},{"code":"N085R00","system":"readv2"},{"code":"N085M00","system":"readv2"},{"code":"N085G00","system":"readv2"},{"code":"N085300","system":"readv2"},{"code":"N085P00","system":"readv2"},{"code":"N085400","system":"readv2"},{"code":"N085600","system":"readv2"},{"code":"N085C00","system":"readv2"},{"code":"N085200","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ankylosing-spondylitis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["other-ankylosing-spondylitis---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["other-ankylosing-spondylitis---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["other-ankylosing-spondylitis---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
