# Imports the Google Cloud client library
from google.cloud import storage
from google.cloud import logging

# Instantiates a client
storage_client = storage.Client.from_service_account_json('key/marcio-pessoal-8fd87b21cfd8.json')
logging_client = logging.Client.from_service_account_json('key/marcio-pessoal-8fd87b21cfd8.json')

def create_bucket(bucket_name, location_):
    # create Bucket
    try:
        bucket = storage_client.create_bucket(bucket_name, location=location_)
        msg = "Bucket ["+bucket.name+"] created."
        print(msg)
        write_log(msg,"INFO")
    except Exception as e:
        error_msg = "Error while creating Bucket ["+bucket_name+"]: => " + str(e)
        print(error_msg)
        write_log(error_msg,"ERROR")

def upload_to_bucket(bucket_name, filename):
    # upload files to Bucket ...
    try:
        bucket = storage_client.get_bucket(bucket_name)
        blob = bucket.blob(filename)
        blob.upload_from_filename(filename)
        msg = "File ["+filename+"] uploaded to Bucket ["+bucket.name+"]."
        print(msg)
        write_log(msg,"INFO")
    except Exception as e:
        error_msg = "Error while uploading file to Bucket ["+bucket.name+"]: => " + str(e)
        print(error_msg)
        write_log(error_msg,"ERROR")

def write_log(msg, severity_):
    logger_name = "br-boavista"
    # This log can be found in the Cloud Logging console under 'Custom Logs'.
    logger = logging_client.logger(logger_name)
    # Simple text log with severity.
    logger.log_text(msg, severity=severity_)
    print("Wrote logs to {}.".format(logger.name))

print("Initializing On-premisse to GCP Process ... ")
print("#1 - Creating Buckets on GCP ... ")
create_bucket('br-boavista','US')
create_bucket('br-boavista-dt','US')
print("#2 - Uploading On Premisse files to Cloud Storage on GCP ... ")
upload_to_bucket("br-boavista-dt","data/bill_of_materials.csv")
upload_to_bucket("br-boavista-dt","data/comp_boss.csv")
upload_to_bucket("br-boavista-dt","data/price_quote.csv")
upload_to_bucket("br-boavista","data/bill_of_materials.csv")
upload_to_bucket("br-boavista","data/comp_boss.csv")
upload_to_bucket("br-boavista","data/price_quote.csv")
print("Process finished!")
