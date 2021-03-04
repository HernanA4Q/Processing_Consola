/* processing_consola.pde
 * Hernan Gonzalez Moreno | hernangonzalezmoreno@gmail.com
 *
 * Implementacion de consola con terminal incluida.
 * Facilidad para imprimir datos y alertas en la pantalla.
 * La terminal se abre con la tecla F1. Facilidad para crear nuestros propios comandos.
 */


Reloj reloj;
Consola consola;
Elipse elipse;

void setup(){
  reloj = new Reloj();
  
  size( 800, 600 );
  consola = new Consola();
  
  /* Importante: 
   * si usamos render P2D o P3D
   * debemos avisarle a la consola
   * para que la terminal se puede abrir con la tecla F1
   
	size( 800, 600, P2D );
  consola = new Consola( P2D );
  */
  
  // Creo mi objeto elipse que contiene comandos listos para usar
  elipse = new Elipse( width*.5, height*.5 );
  
  //Agrego la elipse a mi lista de comandos
  consola.addComando( "elipse", elipse );
  
}
void draw(){
  
  reloj.actualizar();
  
	background(0);
  elipse.dibujar();
  
  consola.println( "Hola mundo!" );
  consola.ejecutar();

}

void mousePressed(){
  consola.printlnAlerta( "Mouse Presionado!" );
}

void mouseReleased(){
  consola.printlnAlerta( "Mouse Liberado!", color( #CC9900 ) );
}

void keyPressed(){
  consola.keyPressed();
  //consola.setDebug( !consola.getDebug() );
  //consola.setVerFps( !consola.getVerFps() );
  //consola.setVerDatos( !consola.getVerDatos() );
  //consola.setVerAlertas( !consola.getVerAlertas() );
}

void keyReleased(){
  consola.keyReleased();
}
