Reloj reloj;
Consola consola;

void setup(){
	size( 800, 600 );
  reloj = new Reloj();
  consola = new Consola();
}
void draw(){
  
  reloj.actualizar();
  
	background(0);
  
  consola.println( "Hola mundo!" );
  consola.ejecutar();

}

void mousePressed(){
  consola.printlnAlerta( "Mouse Presionado!" );
}

void mouseReleased(){
  consola.printlnAlerta( "Mouse Liberado!" );
}

void keyPressed(){
  consola.setDebug( !consola.getDebug() );
  //consola.setVerFps( !consola.getVerFps() );
  //consola.setVerDatos( !consola.getVerDatos() );
  //consola.setVerAlertas( !consola.getVerAlertas() );
}