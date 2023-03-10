echo "Criando as imagens......."

docker build -t davidmonte/projeto-backend:1.0 backend/.
docker build -t davidmonte/projeto-database:1.0 database/.

echo "Enviando as imagens para o Docker Hub........."

docker push davidmonte/projeto-backend:1.0
docker push davidmonte/projeto-database:1.0

echo "Criando servicos no cluster kubernetes........"

kubectl apply -f ./services.yml

echo "Criando os deployments........."

kubectl apply -f ./deployment.yml