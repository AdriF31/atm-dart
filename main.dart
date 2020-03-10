import 'dart:io';

void main(){
  var user = {'user1':'adri','pass1':'1234','user2':'fatwa','pass2':'1233'};
  print("---------------LOGIN-----------------");
  stdout.write("Username  : ");
  var username = stdin.readLineSync();
  stdout.write("Password  : ");
  var password = stdin.readLineSync();

  if(username == user['user1'] && password == user['pass1']){
    int saldo = 100000;
    transaksi(saldo);
  }else if((username == user['user2'] && password == user['pass2'])){
    int saldo = 200000;
    transaksi(saldo);
  }else{
    main();
  }
}

int transaksi(int saldo){
  saldo = saldo;
  print("Pilih menu yang diinginkan");
  print("1.Tarik Tunai\n2.Setor Tunai\n3.Cek Saldo\n4.LOGOUT");
  stdout.write("Masukkan pilihan  (1/2/3/4) : ");
  int pilih = int.parse(stdin.readLineSync());

  switch(pilih){
    case 1 : {
      print("------------------TARIK TUNAI--------------");
      stdout.write("Masukkan jumlah saldo yang akan ditarik : ");
      int tarik = int.parse(stdin.readLineSync());
      saldo = saldo - tarik;
      print("\nsaldo anda : $saldo");
      transaksi(saldo);
    }break;
    case 2 :{
      print("-------------------SETOR TUNAI--------------");
      stdout.write("Masukkan jumlah saldo yang akan disetor : ");
      int setor = int.parse(stdin.readLineSync());
      saldo = saldo + setor;
      print("\nsaldo anda : $saldo");
      transaksi(saldo);
    }break;
    case 3 :{
      print("-------------------SALDO--------------");
      print("saldo anda : Rp $saldo");
      transaksi(saldo);
    }break;
    case 4 :{
      print('TERIMAKASIH');
    }break;
    default: {
      print('Input Salah');
      main();
    }
  }
  
}