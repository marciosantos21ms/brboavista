1 - Criar um projeto novo na GCP e criar uma conta de serviço com acesso aos serviços: BigQuery, Storage e BigQuery Transfer (Scheduled Queries).
2 - Fazer o download da chave da service account para o seu computador. Salvar a chave na pasta "key".
3 - Executar no server/machine de origem o código python "sendToCloud.py" com o requirements.txt. 
    Verificar se a sua rede chega até a GCP, caso contrário, configurá-la.
    Esse código usará a service account e criará os Buckets. 
    Nesse mesmo código será feito o upload dos arquivos CSV do On Premisse para a Google Cloud.
3 - Entrar no Console do Google Cloud e fazer o upload dos arquivos que estão dentro das pastas "key", "schemas" e "queries" para a raiz do servidor.
4 - Abrir o arquivo "gcloud_bigquery.txt" setar as variáveis de ambiente para o seu projeto e executar os comandos.
5 - Pronto! O pipeline está criado.
6 - O monitoramento ocorre pelo Cloud Logging e Monitoring.
