---
project:
due: 2021-06-23
people:
tags: ⬜/🧨 
status: priority
title: Create Summary Table of Denmark Samples
type: [[Task]]
---

# Create Summary Table of Denmark Samples

- ~300 samples drawn from 8 sites across Denmark.
- Time period spanning ...
- Mix of rural and urban, coastal and inland.

## Tracer

```yaml:
file: relaxed_clock/dates/run/beast.log
calibrate:
  - sample: SAMN00715800
  - date: 1349
  - date_bp: 672
  - height: 456.6798
  - date_minus_height: 215.3202
check:
	- sample: SAMEA3713711
	- date: 1721
	- date_bp: 300
	- height: 84.6798
	- date_minus_height:
		- formula: 2021 - 84.6798 - 215.3202 = 1721
calendar_date_conversion:
  - formula: 2021 - 84.6798 - height
```

| Lab ID | Arch ID    | Date (95% HPD) |
| ------ | ---------- | -------------- |
| D51    | GrGC15     | 1571                |
| D62    | G25A       |                |
| D71    | G16        |                |
| D72    | G207       |                |
| D75    | G861x1035  |                |
| P187   | A146x3011  |                |
| P212   | G371       |                |
| P387   | A1480x1480 |                |
| R36    | G25Bx98    |                |

95% HPD interval

[365.7727, 482.2977]

## Old

| Site Code          | Locations                   | Date                    | Samples | Plague Positive | Genome |
| ------------------ | --------------------------- | ----------------------- | ------- | --------------- | ------ |
| VSM 855F/902F/906F | Sct. Mathias. Viborg        | 1100 : 1529             | 23      |                 |        |
| VSM 09264          | The Catholic church, Viborg | 1100 : 1529             | 6       |                 |        |
| VSM 29F            | Faldborg                    | 1100 : 1600             | 17      |                 |        |
| JAH 1-77           | Sct. Michael. Viborg        | 1000 : 1529             | 4       |                 |        |
| ASR 1311/2391      | Ribe Lindegården Cathedral  | 900 : 1000, 1000 : 1700 | 50      |                 |        |
| ASR 1015           | Ribe Grey Friar             | 1200 : 1560             | 53      |                 |        |
| ØHM 1247           | Hågerup, Odense             | 1100 : 1555             | 7       |                 |        |
| HOM 1272           | Monastery church, Horsens   | 1600 : 1800             | 50      |                 |        |

## Mito Genomes from Jen?