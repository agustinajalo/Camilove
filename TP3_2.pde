// Tp entero:
String estado; 

PFont miFuente;

//declarar variables imagenes
PImage inicio; // imagen del castillo desaturado más botonera
PImage castillo; // Pantalla 2 
PImage Libro; // Pantalla 3
PImage Bosque; // Pantalla 4
PImage Ladrones; // Pantalla 5
PImage Dialogo1; // Pantalla 6
PImage cuevaAbierta; // Pantalla 7
PImage Dialogo2; //Pantalla 8
PImage Pregunta1; // Pantalla 9
PImage Atrapado; // Pantalla 10
PImage GranRoca; // Pantalla 11
PImage creditos; // Pantalla 16 


void setup() {
  size( 1024, 768 ); // espacio de trabajo
  textSize( 32 ); // cuerpo de texto del botón start y créditos
  textAlign( CENTER, CENTER ); // alineación del texto

 estado = "inicio"; // Pantalla 1

  miFuente = loadFont("BenguiatBold-32.vlw"); // tipografía

  //cargar las imagenes
  inicio = loadImage("Inicio.jpg"); // esta es tanto la de créditos como la de inicio
  castillo = loadImage("Castillo.jpg"); // Pantalla 2 
  Libro = loadImage("Libro.jpg"); // Pantalla 3
  Bosque = loadImage("Bosque.jpg"); // Pantalla 4
  Ladrones = loadImage("Ladrones.png"); // Pantalla 5
  Dialogo1  = loadImage("Diálogo1.png"); // Pantalla 6
  cuevaAbierta  = loadImage("Cueva abierta.jpg"); // Pantalla 7
  Dialogo2  = loadImage("Diálogo2.png"); // Pantalla 8
  Pregunta1  = loadImage("Pregunta1.png"); // Pantalla 9
  Atrapado  = loadImage("Atrapado.jpg"); // Pantalla 10
  GranRoca  = loadImage("GranRoca.jpg"); // Pantalla 11
  creditos = loadImage("Créditos.jpg"); // Pantalla 16
}

// draw para dibujar la pantalla
void draw() { //mage( nombreImg, posX, posY, ancho, alto );
  if ( estado.equals("inicio") ) {
    image( inicio, 0, 0, 1024, 768 ); //ubicación de la P1
    
  } else if ( estado.equals("creditos") ){
   image( creditos, 0, 0, 1024, 0 ); // ubicación de la P16

  }else if ( estado.equals("castillo") ){
    image( castillo, 0, 0, 1024, 768 ); // ubicación de la P2
    rect( 40, 310, 520, 50 );
    fill( 255, 50 );
    text( "Presione la barra espaciadora", 51, 227 ); // falta ubicarlo dentro del recuadro
     
   } else if ( estado.equals("Libro") ){
     //image( Libro, 0, 0, 1024, 0 );

 }else if ( estado.equals("Bosque") ){
    //image( Bosque, 0, 0, 1024, 768 );
    
  }else if ( estado.equals("Ladrones") ){
   //image( Ladrones, 580, 370, 421,172 );
  
}else if ( estado.equals("Dialogo1") ){
   //image( Dialogo1, 640, 340, 199, 71 );
  
}else if ( estado.equals("cuevaAbierta") ){
   //image( cuevaAbierta, 0, 0, 1024, 768 );
  
 }else if ( estado.equals("Dialogo2") ){
   //image( Dialogo2, 640, 340, 199, 71 );
  
 }else if ( estado.equals("Pregunta1") ){
   //image( Pregunta1, 642, 340, 195, 170 );     
 
 }else if ( estado.equals("Atrapado") ){
   //image( Atrapado, 0, 0, 1024, 768 );
  
 }else if ( estado.equals("GranRoca") ){
   //image( GranRoca, 0, 0, 1024, 768 );
  
 }
 }
 

void mouseClicked() {
  println (mouseX +"," + mouseY);
}

void keyPressed(){
    if ( key == ' ') {
      image( Libro, 0, 0, 1024, 768 );
     estado = "Libro";

  }else if ( key == 'a' ) { // Hay que apretar la A (tengo que avisarlo)
    image( Bosque, 0, 0, 1024, 768 );
  estado = "Bosque";
  
 }else if ( key == 'b' ) { // Hay que apretar la B (tengo que avisarlo)
    image( Ladrones, 580, 370, 421,172 );
  estado = "Ladrones";
 
 }else if ( key == 'c' ) { // Hay que apretar la C (tengo que avisarlo)
    image( Dialogo1, 640, 340, 199, 71 );
  estado = "Dialogo1";
 
 }else if ( key == 'd' ) { // Hay que apretar la D (tengo que avisarlo)
     image( cuevaAbierta, 0, 0, 1024, 768 );
  estado = "cuevaAbierta";

 }else if ( key == 'e' ) { // Hay que apretar la B y la E (tengo que avisarlo)
    image( Dialogo2, 640, 340, 199, 71 );
  estado = "Dialogo2"; 
 
 }else if ( key == 'f' ) { // Hay que apretar la A y la F (tengo que avisarlo)
    image( Pregunta1, 642, 340, 195, 170 );
  estado = "Pregunta1"; // LE SIGUE KEYPRESSED
 
 }
  }


void mousePressed(){
  if (estado.equals("inicio") ){
  
  // cuando: hago click sobre el rect 1
if (mouseX > 220 && mouseX < 443 && mouseY > 633 && mouseY < 679){ 
estado = "creditos"; /////////////////////////////////////////// ACA ALGO NO FUNCIONA
    
    
    smooth ();
    strokeJoin (ROUND); //forma curva
    fill(255, 30); // sin relleno
    noStroke(); //  lazo
   rect( 216, 628, 227, 51 ); // rectángulo área 1
}
}

  // cuando: hago click sobre el rectaágulo 2
 if (mouseX > 594 && mouseX < 819 && mouseY > 633 && mouseY < 679){ 
estado = "castillo";
    
    
    smooth ();
    strokeJoin (ROUND); //forma curva
    fill(255, 30); // sin relleno
    noStroke(); //  lazo
    rect( 591, 628, 227, 51 ); // rectángulo área 2
}
  // cuando: hago click sobre el rectángulo 1
 if (mouseX > 656 && mouseX < 809 && mouseY > 406 && mouseY < 436){ 
estado = "Atrapado";
   
}
  // cuando: hago click sobre el rectángulo 2
 if (mouseX > 656 && mouseX < 811 && mouseY > 456 && mouseY < 486){ 
estado = "GranRoca";
}
}
