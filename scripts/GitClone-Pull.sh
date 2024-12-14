# Variables
REPO_DIR="/var/lib/jenkins/workspace/Clone_Repository/Jenkins_Proyecto"
REPO_URL="https://$GITHUB_USERNAME:$GITHUB_PASSWORD@github.com/ligdeyar/Jenkins_Proyecto.git"
BRANCH="main"

# Verificar si el directorio de destino ya existe
if [ -d "$REPO_DIR" ]; then
    echo "El directorio '$REPO_DIR' ya existe, actualizando el repositorio..."
    cd $REPO_DIR
    git checkout $BRANCH
    git pull origin $BRANCH  # Actualizar la rama local con los cambios del repositorio remoto
else
    # Clonar el repositorio si no existe
    echo "Clonando el repositorio..."
    git clone $REPO_URL $REPO_DIR
    cd $REPO_DIR
    git checkout $BRANCH
fi