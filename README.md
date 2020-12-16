# Serving saved models with TensorFlow.js on Cloud Run

Use [tf.js](https://github.com/tensorflow/tfjs) to serve prediction
with saved models using Cloud Run.

Adopted from [firebase-object-detection-node](https://github.com/tensorflow/tfjs-examples/tree/master/firebase-object-detection-node) example, mostly by removing code and fixing its bugs.

Build and deploy:

```sh
gcloud beta run deploy object-detection \
    --platform=managed \
    --region=us-central1 \
    --allow-unauthenticated \
    --memory=1Gi \
    --max-instances=10 \
    --concurrency=10 \
    --port=8080 \
    --source=.
```
