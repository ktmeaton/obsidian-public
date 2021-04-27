---
project: [[plague-phylogeography]]
due: 2021-04-26
people:
  - [[Sebastian Duchene]]
  - [[Leo Featherstone]]
  - [[Hendrik Poinar]]
tags: ⬜/✨  
status: done
type: [[Task]]
---

# Verify Dates

| seq_name                                                           | date_width | date_central | 1/precision |
| ------------------------------------------------------------------ | ---------- | ------------ | ----------- |
| SAMN00715800_[671:669]_670                                         | 2          | 670          | 0.002985075 |
| SAMEA3713715_[299:297]_298                                         | 2          | 298          | 0.006711409 |
| SAMEA6812877_[4588:4486]_4537                                      | 102        | 4537         | 0.022481816 |
| SAMEA1061800_[1805:1758]_1781.5                                    | 47         | 1781.5       | 0.026382262 |
| SAMEA104233048_[4026:3901]_3963.5                                  | 125        | 3963.5       | 0.031537782 |
| SAMEA3541826_[3765:3645]_3705                                      | 120        | 3705         | 0.032388664 |
| SAMEA104233046_[4640:4491]_4565.5                                  | 149        | 4565.5       | 0.032636075 |
| SAMEA3541827_[4895:4696]_4795.5                                    | 199        | 4795.5       | 0.041497237 |
| SAMEA104488961_[3937:3773]_3855                                    | 164        | 3855         | 0.042542153 |
| SAMEA7313236_38_[257:246]_251.5                                    | 11         | 251.5        | 0.043737575 |
| SAMEA104233047_[4593:4359]_4476                                    | 234        | 4476         | 0.05227882  |
| SAMEA104233049_[4415:4167]_4291                                    | 248        | 4291         | 0.057795386 |
| SAMEA3937654_[657:619]_638                                         | 38         | 638          | 0.059561129 |
| SAMEA5818803_[401:371]_386                                         | 30         | 386          | 0.077720207 |
| SAMEA5661365_[1519:1369]_1444                                      | 150        | 1444         | 0.103878116 |
| SAMEA5661385_[1585:1419]_1502                                      | 166        | 1502         | 0.110519308 |
| SAMEA5818806_[719:619]_669                                         | 100        | 669          | 0.149476831 |
| SAMEA5054089_[719:619]_669                                         | 100        | 669          | 0.149476831 |
| SAMEA5818809_[736:629]_682.5                                       | 107        | 682.5        | 0.156776557 |
| SAMEA5818800_[459:384]_421.5                                       | 75         | 421.5        | 0.177935943 |
| SAMEA5661367_[1369:1139]_1254                                      | 230        | 1254         | 0.183413078 |
| GCA_001188715.1_ASM118871v1_genomic_[58:43]_50.5                   | 15         | 50.5         | 0.297029703 |
| GCA_001188675.1_ASM118867v1_genomic_[58:43]_50.5                   | 15         | 50.5         | 0.297029703 |
| SAMEA5818805_[534:392]_463                                         | 142        | 463          | 0.306695464 |
| SAMEA5818817_[599:389]_494                                         | 210        | 494          | 0.425101215 |
| GCA_002005285.1_ASM200528v1_genomic_[121:69]_95                    | 52         | 95           | 0.547368421 |
| SAMEA7313243_45_[619:319]_469                                      | 300        | 469          | 0.639658849 |
| GCA_000834315.1_ASM83431v1_genomic_[69:35]_52                      | 34         | 52           | 0.653846154 |
| GCA_000182545.1_ASM18254v1_genomic_[69:35]_52                      | 34         | 52           | 0.653846154 |
| SAMEA7293135_[519:219]_369                                         | 300        | 369          | 0.81300813  |
| GCA_001188695.1_ASM118869v1_genomic_[53:22]_37.5                   | 31         | 37.5         | 0.826666667 |
| GCA_001188795.1_ASM118879v1_genomic_[53:22]_37.5                   | 31         | 37.5         | 0.826666667 |
| GCA_000382525.1_Yersinia_pestis_G3768_assembly_genomic_[69:19]_44  | 50         | 44           | 1.136363636 |
| GCA_000382505.1_Yersinia_pestis_G1670E_assembly_genomic_[69:19]_44 | 50         | 44           | 1.136363636 |
| GCA_001188335.1_DYA_1_genomic_[69:19]_44                           | 50         | 44           | 1.136363636 |
| GCA_000834235.1_ASM83423v1_genomic_[69:19]_44                      | 50         | 44           | 1.136363636 |
| GCA_001487065.1_Yersinia_pestis_genomic_[19:3]_11                  | 16         | 11           | 1.454545455 |


>I suggest we assume a fixed date for everything, but the last 10. Those are not the oldest samples, but the proportional ucnertainty is quite large (e.g. sampled any time from 19 to 69 years ago). Alternatively, we can take top 10 with widest absolute uncertainty. Kat, can you have a look at this and let us know if there is a reasonable way to reduce the number of samples with uncertain dates? Ideally I would like to keep this at a maximum of 10.

I have a couple of questions:
1. In fixing the dates, does that mean that tip date will not be sampled?