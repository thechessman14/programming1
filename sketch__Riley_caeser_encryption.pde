String message = "Hello!"; 
int key = 3;
String encrypted = " ";
void setup() { 
  size(400,400);
  background(255,0,0);
  textSize(20);
  encrypted = encrypt(message,key);
  fill(0000);
  text("Original: " + message,20,275);
   text("Encrypted: " + message,20,300);
} 
String encrypt(String text,int shift){
  String result = " ";
  for(int i=0; i<text.length(); i++){
    char c = text.charAt(i);
    c=(char)(c+shift);
    result += c;
  }
  return result;
}
