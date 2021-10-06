---
aliases:
  - Basepace GUI
tags:
  - 📝/🌱
status: idea

---

# Basepace GUI

## Dashboard Access

- Navigate to https://basespace.illumina.com/.
- Login to your account.

## Sample Download

- Navigate to the `Projects` tab.
- Select your desired sequencing run.
- Navigate to the `Samples` tab.
- Select the desired sample.
- Find the panel that lists the FASTQ files, select all.
- Click the `Download Selected` button.
- You will be prompted to download the accessory app:
	![[BaseSpace Downloader.png]]
- Click the hyperlink text that says "Install the BaseSpace Sequence Hub Downloader"
- Download and run the exectable (setup.exe).
- After installation, close any new windows that opened up.
- Back in the web browser, click on the `Download` button.
- Authorize BaseSpaceDownloadLauncher to download the files.
- Select the folder where you want the project to be downloaded to.

## Project Download

- Navigate to the `Projects` tab.
- Select your desired sequencing run.
- Click `Download Project`.
- Go have a coffee ☕

## Sample Upload

- Open a terminal.
- `ssh` into your remote server.
	```bash
	ssh username@server.com
	```
- Create a folder to store sequence data.
	```bash
	mkdir /2/scratch/username/sequence_data
	```
- Open a second terminal.
- Navigate to the folder where BaseSpace downloaded the sample.
- Upload the sample directory to a remote server.
	```bash
	scp -r My_Sample_Dir/ username@server.com:/2/scratch/username/sequence_data
	```


> which account is being used currently?
> why do our accounts have different layouts?
> BaseSpace not supported on Linux??o

