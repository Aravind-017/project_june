import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: SingleScroll(),));
}
class SingleScroll extends StatelessWidget {
  const SingleScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Let's Read A story"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Cindrella",
          style: GoogleFonts.cabinCondensed(
            fontWeight: FontWeight.bold,color: Colors.blue
          ),),
          Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Text("""
                ONCE UPON A TIME a girl named Cinderella lived with her 
                stepmother and two stepsisters.  Poor Cinderella had to work 
                hard all day long so the others could rest. It was she who had to 
                wake up each morning when it was still dark and cold to start the fire.  
                It was she who cooked the meals. It was she who kept the fire going. 
                The poor girl could not stay clean, from all the ashes and cinders by the
                 fire.“What a mess!” her two stepsisters laughed.  And that is why they called her “Cinderella.”
                One day, big news came to town.  The King and Queen were going to have a ball!  
                It was time for the Prince to find a bride. All of the young ladies in the land were invited to come. 
                 They were wild with joy! They would wear their most beautiful gown and fix their hair extra nice. 
                 Maybe the prince would like them!
                 At Cinderella’s house, she now had extra work to do.  She had to make two brand-new gowns for
                  her step-sisters.  
                 “Faster!” shouted one step-sister.
                “You call that a dress?” screamed the other.  
                  “Oh, dear!” said Cinderella.  “When can I–“
                      The stepmother marched into the room.  “When can you WHAT?”
              One day, big news came to town.  The King and Queen were going to have a ball!  
              It was time for the Prince to find a bride. All of the young ladies in the land were invited to come. 
               They were wild with joy! They would wear their most beautiful gown and fix their hair extra nice. 
               Maybe the prince would like them!
                 At Cinderella’s house, she now had extra work to do.  She had to make two brand-new gowns
                  for her step-sisters.  
                 “Faster!” shouted one step-sister.
                “You call that a dress?” screamed the other.  
                  “Oh, dear!” said Cinderella.  “When can I–“
                      The stepmother marched into the room.  “When can you WHAT?”
                      One day, big news came to town.  The King and Queen were going to have a ball!  
                      It was time for the Prince to find a bride. All of the young ladies in the land were 
                      invited to come.  They were wild with joy! They would wear their most beautiful
                       gown and fix their hair extra nice. Maybe the prince would like them!
                 At Cinderella’s house, she now had extra work to do.  She had to make two brand-new gowns 
                 for her step-sisters.  
                 “Faster!” shouted one step-sister.
                “You call that a dress?” screamed the other.  
                  “Oh, dear!” said Cinderella.  “When can I–“
                      The stepmother marched into the room.  “When can you WHAT?”
              """),
              ))
        ],
      ),
    );
  }
}
