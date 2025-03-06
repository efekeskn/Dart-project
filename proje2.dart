void main(){

Araba araba("fiat",2012,90);
araba.tanit();
araba.hizartir(20);
araba.tanit();
araba.hizazalt(20);
araba.tanit();


}

class Araba{

    String marka;
    int model;
    int hız;

    Araba (String a, int b, int c){
        marka= a;
        model=b;
        hiz=c;
    }
    void hizartir(int a){
        hiz+=a;
    }
    void hizazalt(int a){
        hiz-=a;
    }
    void tanit(){
        print("arabanin markasi: $marka    arabanin modeli: $model     arabanin hizi: $hiz");
    }
}