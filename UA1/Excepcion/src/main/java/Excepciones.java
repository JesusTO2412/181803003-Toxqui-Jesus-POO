/**
 *
 * @author Jesus
 */
public class Excepciones {
    
    public static void main(String args[]){
        
        int numerador;
        int denominador;
        float division;
        
        System.out.println("Antes de la division");
        numerador = 20;
        denominador = 0;   
        
        try {
            
            division = numerador/denominador;
            
        }
        
        catch(ArithmeticException e){
            
            System.out.println("Error:" + e.getMessage());
            division = 0;
            
        } 
        
        System.out.println(division);  
        System.out.println("Despues de la division");
    }
}
