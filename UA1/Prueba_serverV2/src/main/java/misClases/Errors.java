package misClases;

public class Errors {
   
        
    public static boolean metodoBoolean(boolean n, String mensaje)
    {
        if(n)//Usamos el parámetro en el método
        {
        System.out.println(mensaje);//Mostramos el mensaje
        }
        return n;
    }
}
