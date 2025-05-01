import sys
import pandas as pd
file = sys.argv[1]
nameColumn = sys.argv[2]
valueColumn = sys.argv[3]
outputPath = sys.argv[4]

df = pd.read_csv(file)

df[nameColumn] = valueColumn

with open(outputPath, 'w') as f:
    df.to_csv(f, index=False)

