import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {
 @override

  @override
  Widget build(BuildContext context) {
   var ekranbilgisi=MediaQuery.of(context);
   final double EkranYuksekligi=ekranbilgisi.size.height;
   final double EkranGenisligi=ekranbilgisi.size.width;


   return Scaffold(

      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: EkranGenisligi/4,
                  child: Image.asset("resimler/logo.png")
              ),
              Padding(
                padding:  EdgeInsets.all(EkranGenisligi/30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Kullanıcı Adı",
                    filled: true,
                    fillColor: Colors.white,
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(EkranGenisligi/30),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Şifre",
                    filled: true,
                    fillColor: Colors.white,
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(EkranGenisligi/30),
                child: SizedBox(
                  width: EkranGenisligi/1.2,
                  height: EkranYuksekligi/12,
                  child: ElevatedButton(onPressed: (){
                    print("Giriş yapıldı");
                  }, child: Text("Giriş Yapınız",style: TextStyle(fontSize: EkranGenisligi/25),)),
                ),
              ),
              GestureDetector(
                onTap: (){
                  print("Yardım Çağırıldı");
                },
                child: Text(
                    "Yardım",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 16.0,color: Colors.white),

                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
