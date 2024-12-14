# Variables
REPO_DIR="/var/lib/jenkins/workspace/Clone_Repository/Jenkins_Proyecto"
REPO_URL="https://$GITHUB_USERNAME:$GITHUB_PASSWORD@github.com/ligdeyar/Jenkins_Proyecto.git"
BRANCH="main"


# Verificar si el directorio de destino ya existe
if [ -d "$REPO_DIR" ]; then
    # Si es un directorio y no está vacío, eliminamos el directorio
    if [ "$(ls -A $REPO_DIR)" ]; then
        echo "El directorio '$REPO_DIR' no está vacío, eliminando y clonando de nuevo..."
        rm -rf $REPO_DIR  # Eliminar el directorio y su contenido
    fi
    # Volver a clonar el repositorio
    git clone $REPO_URL $REPO_DIR
    cd $REPO_DIR
    git checkout $BRANCH
else
    # Clonar el repositorio si no existe
    echo "Clonando el repositorio..."
    git clone $REPO_URL $REPO_DIR
    cd $REPO_DIR
    git checkout $BRANCH
fi