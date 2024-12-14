<<<<<<< HEAD
# Definir variables para el acceso al servidor
USER="ligdeyar" 
SERVER_IP="200.115.96.110"
REPO_DIR= "/var/lib/jenkins/workspace/Clone_Repository/Jenkins_Proyecto"
BRANCH="Pruebas" 
DEVELOPMENT_BRANCH="Desarrollo"
SSH_KEY_PATH= "~/.ssh/id_rsa.pub"   
# Desplegar cambios en el servidor de pruebas
echo "Desplegando los cambios en el servidor de pruebas..."
echo "Simulando despliegue en servidor de pruebas..."
ssh -i $SSH_KEY_PATH $USER@$SERVER_IP << EOF
    echo "Conectado al servidor de pruebas..."
    cd $PROJECT_PATH

    # Obtener los últimos cambios desde la rama de pruebas
    echo "Actualizando el repositorio desde la rama $BRANCH..."
    git checkout $BRANCH
    git pull origin $BRANCH

    # Fusionar los cambios de desarrollo a pruebas
    echo "Fusionando cambios de Desarrollo a Pruebas..."
    git merge $DEVELOPMENT_BRANCH

    echo "Despliegue completado exitosamente."
EOF

# Confirmación del despliegue
echo "Despliegue en pruebas completado."
=======
# Variables
REPO_DIR="/var/lib/jenkins/workspace/Clone_Repository/Jenkins_Proyecto"
REPO_URL="https://$GITHUB_USERNAME:$GITHUB_PASSWORD@github.com/ligdeyar/Jenkins_Proyecto.git"
BRANCH="main"
TESTING_BRANCH="Pruebas"


git checkout $BRANCH
git merge $TESTING_BRANCH
git push origin $BRANCH

echo "CAMBIOS SINCRONIADOS CORRECTAMENTE A PRODUCCION"
>>>>>>> ef217bc194557b3e2a42cca827642c78458b9648
