from google.cloud import storage

# Função que cria um bucket (pasta) no Google Storage

def create_bucket (bucket_name):
    bucket_name = bucket_name
    storage_client = storage.Client()

    bucket = storage_client.bucket(bucket_name)
    bucket.storage_class = "COLDLINE"
    new_bucket = storage_client.create_bucket(bucket, location="us")
    print(
            "Bucket {} criado em {} dentro da classe de armazenamento {}".format(
                new_bucket.name, new_bucket.location, new_bucket.storage_class
            )
    )

    return new_bucket

# Função que carrega um arquivo dentro do bucket (pasta) no Google Storage

def upload_file_in_bucket (bucket_name,source_file_name, destination_blob_name):

    bucket_name = bucket_name
    source_file_name = source_file_name
    destination_blob_name = destination_blob_name

    storage_client = storage.Client()
    bucket = storage_client.bucket(bucket_name)
    blob = bucket.blob(destination_blob_name)
    generation_match_prediction = 0
    blob.upload_from_filename(source_file_name, 
                              if_generation_match = generation_match_prediction)

    print(
        f'O arquivo {source_file_name} foi carregado em {destination_blob_name}.'
    )

create_bucket ('state_of_data3')

upload_file_in_bucket('state_of_data3',
                      'state_of_data_brazil_2023/data/state_of_data_survey.csv',
                      'state_of_data_23')