import psycopg2

#definir mis variables de conexión
DB_HOST="localhost"
DB_PORT="5432"
DB_NAME="productosBD"
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
    
def obtener_productos():
    conn = conectar_db()
    if not conn:
        return
    try:
        cursor = conn.cursor()
        query = """
                SELECT * FROM productos;
                """
        cursor.execute(query)
        res = cursor.fetchall()

        if res :
            print("Codigo      Nombre        Precio Unitario")
            for r in res:
                print(f"{r[0]}     {r[2]}     {r[1]}")
        else:
            print("resultados vacios")
        
        cursor.close()
        conn.close()
    except Exception as e:
        print("Error al consultar la base de datos:", e)

def obtener_proveedores():
    conn = conectar_db()
    if not conn:
        return
    try:
        cursor = conn.cursor()
        query = """
                SELECT * FROM proveedor;
                """
        cursor.execute(query)
        res = cursor.fetchall()

        if res :
            print("NIF       Nombre     Dirección")
            for r in res:
                print(f"{r[0]}     {r[1]}     {r[2]}")
        else:
            print("resultados vacios")
        
        cursor.close()
        conn.close()
    except Exception as e:
        print("Error al consultar la base de datos:", e)

def agregar_proveedor():
    conn = conectar_db()
    nif=input("Ingresa el NIF del proveedor ")
    nombre=input("Ingresa el nombre del proveedor ")
    direccion=input("Ingresa la direccion del proveedor ")

    if not conn:
        return
    try:
        cursor = conn.cursor()
        query = """
                INSERT INTO proveedor VALUES (%s, %s, %s);
                """
        cursor.execute(query, (nif, nombre, direccion))
        print("Proveedor Agregado")                
        cursor.close()
        conn.commit()
        conn.close()        
    except Exception as e:
        print("Error al consultar la base de datos:", e)        

def agregar_producto():
    conn = conectar_db()
    obtener_proveedores()                
    nif=input("Ingresa el NIF del proveedor ")
    nombre=input("Ingresa el nombre del producto ")
    precio=input("Ingresa el precio del producto ")

    if not conn:
        return
    try:
        cursor = conn.cursor()
        query = """
                INSERT INTO productos (precio_unitario, nombre, nif_proveedor) VALUES (%s, %s, %s);
                """
        cursor.execute(query, (precio, nombre, nif))
        print("Producto Agregado")
        cursor.close()
        conn.commit()
        conn.close()        
    except Exception as e:
        print("Error al consultar la base de datos:", e)

def buscar_proveedor(nif):
    conn = conectar_db()
    if not conn:
        return
    try:
        cursor = conn.cursor()
        query = """
                SELECT * FROM proveedor WHERE NIF = %s;
                """
        cursor.execute(query, (nif,))
        res = cursor.fetchone()
        
        if res :
            print(f"NIF: {res[0]}")
            print(f"Nombre: {res[1]}")
            print(f"Direccion: {res[2]}")
        else:
            print("Proveedor no encontrado")
        
        cursor.close()
        conn.close()
    except Exception as e:
        print("Error al consultar la base de datos:", e)

def eliminar_proveedor(nif):
    conn = conectar_db()
    if not conn:
        return
    try:
        cursor = conn.cursor()
        query = """
                DELETE FROM proveedor WHERE NIF = %s;
                """
        cursor.execute(query, (nif,))
        res = cursor.rowcount
        
        if res :            
            print(f"Se ha eliminado el registro")
            conn.commit()
        else:
            print("No se encontró el proveedor")
        
        cursor.close()
        conn.close()
    except Exception as e:
        print("Error al consultar la base de datos:", e)


def main():
    while True:
        stop=input("Presione enter para continuar")
        print("1. Consultar Productos")
        print("2. Consultar Proveedores")
        print("3. Agregar un nuevo producto")
        print("4. Agregar un nuevo proveedor")
        print("5. Buscar un proveedor")
        print("6. Buscar un producto")
        print("7. Eliminar un proveedor")
        print("8. Eliminar un producto")
        print("0. Salir")
        opc=input()

        if(opc=="1"):
            obtener_productos()
        elif(opc=="2"):
            obtener_proveedores()
        elif(opc=="3"):
            agregar_producto()
        elif(opc=="4"):
            agregar_proveedor()
        elif(opc=="5"):
            nif=input("Introduce el Nif del proveedor que quieres buscar ")
            buscar_proveedor(nif)
        elif(opc=="6"):
            print("buscar producto")
        elif(opc=="7"):
            nif=input("Introduce el Nif del proveedor que quieres Eliminar ")
            eliminar_proveedor(nif)
        elif(opc=="8"):
            print("eliminar producto")
        elif(opc=="0"):
            print("hasta luego")
            break
        else:
            print("No existe esa opcion en el menu")

main()

