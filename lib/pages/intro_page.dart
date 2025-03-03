import 'package:ecommerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget{

 const IntroPage({super.key});
 
  @override
  Widget build (BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.asset('images/logo.png'),
            Text('Taste the Joy',style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400  
            )
            ),

            SizedBox(height: 10,),

            Text('Discover delicious moments in every bite.',
                       textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15.2,
            ),
                       ),

            SizedBox(height: 10,),
            Center(
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return HomePage();
                  },
                  )
                  );
                },
                child: Container(
                  height: 50,
                  width: 200,
                
                  decoration: BoxDecoration(
                    color: Colors.black54,
                  borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text('Shop Now',style:TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      )
                      ),
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}

