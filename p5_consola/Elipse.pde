class Elipse extends PVector implements Comando{
  
  color col;
  int ancho, alto;
  
  Elipse( float x, float y ){
    this.x = x;
    this.y = y;
    ancho = alto = 100;
    col = color( 255, 0, 0 );
  }
  
  void dibujar(){
    pushStyle();
    fill( col );
    ellipse( x, y, ancho, alto );
    popStyle();
  }
  
  boolean entradaDeComandos( String[] comandos, String[] valores ){
    try{  
      switch( comandos[ 1 ] ){
        case "x":
          x = parseInt( valores[0] );
          break;
        case "y":
          y = parseInt( valores[0] );
          break;
        case "ancho":
          ancho = parseInt( valores[0] );
          break;
        case "alto":
          alto = parseInt( valores[0] );
          break;
        case "color":
          col = color( parseInt( valores[0] ), parseInt( valores[1] ), parseInt( valores[2] ) );
          break;
        default:
          consola.printlnAlerta("Error en el comando");
          return false;
      }
    }catch( Exception e ){
      consola.printlnError( "Exception: " + e.getMessage() );
      return false;
    }
    
    return true;
  }
  
  //Esto por ahora no cumple ninguna funcion
  //pero la idea es poder listar los comando que tiene el objeto
  String[] getComandos(){
    String[] c = {
      "x", "y", "ancho", "alto", "color"
    }; 
    return c;
  }
  
}
