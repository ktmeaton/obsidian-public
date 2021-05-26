---
aliases:
  - Plot BAM Edit Distance
tags:
  - 📝/🌱
status: idea

---

# Plot BAM Edit Distance

```bash
# 1. Login to the server, using X forwarding
ssh -X username@info.mcmaster.ca
ssh -X info113

# 2. Activate a conda environment for plotting
conda activate /home/poinarlab/Projects/Plague/Denmark/envs/plot

# 3. Create a text file of all the edit distances
/home/keaton/scripts/bamEditDistInt.sh ancient.bam > ancient.edit_distance.txt

# 4. Plot the edit distances as a histogram and boxplot (png and svg)
python3 /home/keaton/scripts/plot_edit_distance.py ancient.edit_distance.txt
```