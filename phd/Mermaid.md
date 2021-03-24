# Mermaid

Flow charts in markdown. 
https://mermaid-js.github.io/mermaid/#/

## Examples
### Flowcharts
```mermaid
graph TD; A-->B; A-->C; B-->D; C-->D;
```

### Sequence Diagram
```mermaid
sequenceDiagram
    participant Alice
    participant Bob
    Alice->>John: Hello John, how are you?
    loop Healthcheck
        John->>John: Fight against hypochondria
    end
    Note right of John: Rational thoughts <br/>prevail!
    John-->>Alice: Great!
    John->>Bob: How about you?
    Bob-->>John: Jolly good!
```

### Gant Diagram

1. General Timeline

	```mermaid
	gantt
	dateFormat  YYYY-MM-DD
	title Adding GANTT diagram to mermaid
	excludes weekdays 2014-01-10

	section A section
	Completed task            :done,    des1, 2014-01-06,2014-01-08
	Active task               :active,  des2, 2014-01-09, 3d
	Future task               :         des3, after des2, 5d
	Future task2               :         des4, after des3, 5d
	```

1. Bar Chart!
```mermaid
gantt
	dateFormat  YYYY
	axisFormat %y
	title Coverage of Reference at a Depth of 3X
	
	section Pass
	D51 : , 0000, 0071
	D62 : , 0000, 0056
	D51 : , 0000, 0090
	D71 : , 0000, 0090
	D72 : , 0000, 0068
	D75 : , 0000, 0090
	P187 : , 0000, 0055
	P212 : , 0000, 0062
	P387 : , 0000, 0059
	R36  : , 0000, 0092

	
	section Fail
	D24 : crit,  0000, 0034
	D25 : crit,  0000, 0001	
	P246 : crit, 0000, 0001	
	P384 : crit, 0000, 0016	
	R21  : crit, 0000, 0033
	R44  : crit, 0000, 0001	
```

### Pie Chart

```mermaid
pie title Commits to mxgraph2 on GitHub
	"Sunday" : 4
	"Monday" : 5
	"Tuesday" : 7
  "Wednesday" : 3
```

---

## Daily Obsidian Workflow

1. Open up the Daily Note.
1. Review tasks that due or upcoming.
1. Create my Daily Planner.

```mermaid
graph TD;
1[Open the daily note.]-->2;
2[Review tasks that are due or upcoming.]-->3;
3[Create my daily planner.]-->4;
4[Create a daily scratch note.]-->5;
5[Check email]
```

tags: [[Tool]]