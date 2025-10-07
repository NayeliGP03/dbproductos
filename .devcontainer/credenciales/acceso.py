import psycopg2
import getpass

#definir mis variables de conexión
DB_HOST="localhost"
DB_PORT="5432"
DB_NAME="credenciales"
DB_USER="myuser"
DB_PASSWORD="mypassword"

def conectar_db():
    try:
        conn=psycopg2.connect(
            host=DB_HOST,
            port=DB_PORT,
            database=DB_NAME,
            user=DB_USER,
            password=DB_PASSWORD
        )
        return conn
    except Exception as e:
        print(e)
        return None
    
def obtener_datos_usuario(username, password):
    """Consulta la base de datos para obtener los datos de un usuario a
    partir de sus credenciales."""
    conn = conectar_db()
    if not conn:
        return
    try:
        cursor = conn.cursor()
        # Verificar si el usuario y contraseña existen en la tabla credenciales
        query = """
        SELECT u.id_usuario, u.nombre, u.correo, u.telefono, u.fecha_nacimiento, p.puesto  
        FROM credenciales c
        JOIN usuarios u ON c.id_usuario = u.id_usuario
        LEFT JOIN puestos p ON u.id_puesto = p.id_puesto  
        WHERE c.username = %s AND c.password_hash = %s;
        """
        cursor.execute(query, (username, password))
        usuario = cursor.fetchone()
        if usuario:
            print("\nDatos del usuario encontrado:")
            print(f"ID: {usuario[0]}")
            print(f"Nombre: {usuario[1]}")
            print(f"Correo: {usuario[2]}")
            print(f"Teléfono: {usuario[3]}")
            print(f"Fecha de Nacimiento: {usuario[4]}")
            print(f"Puesto: {usuario[5] if usuario[5] else 'No Asignado'}")
        else:
            print("\nUsuario o contraseña incorrectos.")
        cursor.close()
        conn.close()
    except Exception as e:
        print("Error al consultar la base de datos:", e)

def agregar_usuario():
    """Función para agregar un nuevo usuario a la base de datos"""
    print("\n--- REGISTRO DE NUEVO USUARIO ---")
    
    # Solicitar datos del usuario
    nombre = input("Nombre completo: ")
    correo = input("Correo electrónico: ")
    telefono = input("Teléfono: ")
    fecha_nacimiento = input("Fecha de nacimiento (YYYY-MM-DD): ")
    username = input("Nombre de usuario: ")
    password = getpass.getpass("Contraseña: ")
    
    conn = conectar_db()
    if not conn:
        return
    
    try:
        cursor = conn.cursor()
        
        # Verificar si el username ya existe
        cursor.execute("SELECT id_credencial FROM credenciales WHERE username = %s;", (username,))
        if cursor.fetchone():
            print("Error: El nombre de usuario ya existe.")
            return
        
        # Verificar si el correo ya existe
        cursor.execute("SELECT id_usuario FROM usuarios WHERE correo = %s;", (correo,))
        if cursor.fetchone():
            print("Error: El correo electrónico ya está registrado.")
            return
        
        # Insertar en la tabla usuarios
        insert_usuario = """
        INSERT INTO usuarios (nombre, correo, telefono, fecha_nacimiento)
        VALUES (%s, %s, %s, %s) RETURNING id_usuario;
        """
        cursor.execute(insert_usuario, (nombre, correo, telefono, fecha_nacimiento))
        id_usuario = cursor.fetchone()[0]
        
        # Insertar en la tabla credenciales
        password_hash = password
        insert_credencial = """
        INSERT INTO credenciales (id_usuario, username, password_hash)
        VALUES (%s, %s, %s);
        """
        cursor.execute(insert_credencial, (id_usuario, username, password_hash))
        
        conn.commit()
        print("¡Usuario registrado exitosamente!")
        
    except Exception as e:
        conn.rollback()
        print("Error al registrar usuario:", e)
    finally:
        cursor.close()
        conn.close()

def menu_principal():
    """Menú principal del sistema"""
    while True:
        print("SISTEMA DE USUARIOS")
        print("1. Iniciar sesión")
        print("2. Registrar nuevo usuario")
        print("3. Salir")
        
        opcion = input("Seleccione una opción: ")
        
        if opcion == "1":
            print("\n--- INICIO DE SESIÓN ---")
            username = input("Ingrese su usuario: ")
            password = getpass.getpass("Ingrese su contraseña: ")
            obtener_datos_usuario(username, password)
        
        elif opcion == "2":
            agregar_usuario()
        
        elif opcion == "3":
            print("¡Hasta pronto!")
            break
        
        else:
            print("Opción no válida. Intente nuevamente.")


if __name__ == "__main__":
    print("Inicio de sesión en la base de datos")
    menu_principal()