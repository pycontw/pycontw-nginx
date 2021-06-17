# pycontw-nginx


Nginx for pycon website on Google Cloud Platform


# upload archive 2016-2020 static page to GCS

```
cd /tmp
git clone https://github.com/MozixReality/PyconWeb.git
cd PyconWeb
gsutil mb gs://pythontw-archive
gsutil rsync -r . gs://pythontw-archive
gsutil iam ch allUsers:objectViewer gs://pythontw-archive
```