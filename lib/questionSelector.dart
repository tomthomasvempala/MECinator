import 'package:interference/model.dart';
import 'global.dart';
import 'dart:math';

void rmp(Person per) {
  dataList.remove(per);
}

int count() {
  return dataList.length;
}


bool present(var x)
  {
      for(int i=0;i<idk.length;i++)
        if(idk[i]==x)
          return true;
      return false;
  }


initialiser() {
  nrep = 1;
  nhostel = 1;
  nds = 1;
  nplace = 1;
  nhouse = 1;
  nclas = 1;
  ngen = 1;
  nrel = 1;
  row = "abc";
  lastrow = "xyz";
  lastvalue = "qwe";
  value = "zxc";
  da = "the person you are thinking of";
  idk  = List<String>();
}

void findrow(){
  int i,j,half=count() ~/ 2, max=1000,c,delta;
  //Hostel
  for(i=0;i<dataList.length;i++)
  {
      c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[i].hostel==dataList[j].hostel){
          c++;
          //print(dataList[i].hostel);
      }}
    delta=(half-c).abs();
    if(delta<max&&(!present(dataList[i].hostel))&&dataList[i].hostel!="NIL")
    {
      max=delta;
      row="hostel";
      value=dataList[i].hostel;
      print("half=$half delta=$delta row=$row value=$value");
    }
  }

  //school
  for(i=0;i<dataList.length;i++)
  {
      c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[i].school==dataList[j].school)
          c++;
      }
    delta=(half-c).abs();
    if(delta<max&&(!present(dataList[i].school))&&dataList[i].school!="NIL"&&nschool!=0)
    {
      max=delta;
      row="school";
      value=dataList[i].school;
    }
  }

  //gen
  for(i=0;i<dataList.length;i++)
  {
      c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[i].gen==dataList[j].gen)
          c++;
      }
    delta=(half-c).abs();
    if(delta<max&&ngen!=0)
    {
      max=delta;
      row="gen";
      value=dataList[i].gen;
    }
  }

   //region
  for(i=0;i<dataList.length;i++)
  {
      c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[i].region==dataList[j].region)
          c++;
      }
    delta=(half-c).abs();
    if(delta<max&&nregion!=0)
    {
      max=delta;
      row="region";
      value=dataList[i].region;
    }
  }

  //ds
  for(i=0;i<dataList.length;i++)
  {
      c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[i].ds==dataList[j].ds)
          c++;
      }
    delta=(half-c).abs();
    if(delta<max&&nds!=0)
    {
      max=delta;
      row="ds";
      value=dataList[i].ds;
    }
  }
//religion
  for(i=0;i<dataList.length;i++)
  {
      c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[i].house==dataList[j].house)
          c++;
      }
    delta=(half-c).abs();
    if(delta<max&&nhouse!=0)
    {
      max=delta;
      row="house";
      value=dataList[i].house;
    }
  }
  //rel
  for(i=0;i<dataList.length;i++)
  {
      c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[i].rel==dataList[j].rel)
          c++;
      }
    delta=(half-c).abs();
    if(delta<max&&nrel!=0)
    {
      max=delta;
      row="rel";
      value=dataList[i].rel;
    }
  }

  //rep
  {
      c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[j].rep=="y")
          c++;
      }
    delta=(half-c).abs();
    if(delta<max&&nrep!=0)
    {
      max=delta;
      row="rep";
      value="y";
    }
    c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[j].rep=="n")
          c++;
      }
    delta=(half-c).abs();
    if(delta<max&&nrep!=0)
    {
      max=delta;
      row="rep";
      value="n";
    }
  }

  //place
  for(i=0;i<dataList.length;i++)
  {
      c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[i].place==dataList[j].place)
          c++;
      }
    delta=(half-c).abs();
    if(delta<max&&nplace!=0)
    {
      max=delta;
      row="place";
      value=dataList[i].place;
    }
  }

//specs
  {
      c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[j].specs=="y")
          c++;
      }
    delta=(half-c).abs();
    if(delta<max&&nspecs!=0)
    {
      max=delta;
      row="specs";
      value="y";
    }
    c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[j].specs=="n")
          c++;
      }
    delta=(half-c).abs();
    if(delta<max&&nspecs!=0)
    {
      max=delta;
      row="specs";
      value="n";
    }
  }

  //singer
  {
      c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[j].singer=="y")
          c++;
      }
    delta=(half-c).abs();
    if(delta<max&&nsinger!=0)
    {
      max=delta;
      row="singer";
      value="y";
    }
    c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[j].singer=="n")
          c++;
      }
    delta=(half-c).abs();
    if(delta<max&&nsinger!=0)
    {
      max=delta;
      row="singer";
      value="n";
    }
  }

  //dancer
  {
      c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[j].dancer=="y")
          c++;
      }
    delta=(half-c).abs();
    if(delta<max&&ndancer!=0)
    {
      max=delta;
      row="dancer";
      value="y";
    }
    c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[j].dancer=="n")
          c++;
      }
    delta=(half-c).abs();
    if(delta<max&&ndancer!=0)
    {
      max=delta;
      row="dancer";
      value="n";
    }
  }

//programmer
  {
      c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[j].programmer=="y")
          c++;
      }
    delta=(half-c).abs();
    if(delta<max&&nprogrammer!=0)
    {
      max=delta;
      row="programmer";
      value="y";
    }
    c=0;
      for(j=0;j<dataList.length;j++)
      {
        if(dataList[j].programmer=="n")
          c++;
      }
    delta=(half-c).abs();
    if(delta<max&&nprogrammer!=0)
    {
      max=delta;
      row="programmer";
      value="n";
    }
  }
  if(max+half==count())
    row="insufff";
  if(max==half)
    row="insufff";

}



String firstQuestion() {
  final _random = new Random();
  if (_random.nextInt(2) == 0) {
    firstQuestionCSA = true;
    return "Does $da study in CSA ?";
  } else {
    firstQuestionCSA = false;
    return "Does $da study in CSB ?";
  }
}

firstQuestionEvaluator(String answer) {
  int i;
  int flag=1;
  if (firstQuestionCSA == true) {
    if (answer == "y") {
      for (i = 0; i < dataList.length; i++) {
        if (dataList[i].clas == "CSB") {
          print("${flag++}");
          rmp(dataList[i--]);
        }
      }
    } else {
      for (i = 0; i < dataList.length; i++) {
        if (dataList[i].clas == "CSA") {
          print("${flag++}");
          rmp(dataList[i--]);
        }
      }
    }
  } else if (firstQuestionCSA == false) {
    if (answer == "y") {
      for (i = 0; i < dataList.length; i++) {
        if (dataList[i].clas == "CSA") {
          print("${flag++}");
          rmp(dataList[i--]);
        }
      }
    } else {
      for (i = 0; i < dataList.length; i++) {
        if (dataList[i].clas == "CSB") {
          print("${flag++}");
          rmp(dataList[i--]);
        }
      }
    }
  }
  for(i=0;i<dataList.length;i++){
    print("${dataList[i].name} - ${dataList[i].clas} \n" );
  }
}

String otherQuestion(){
  findrow();

  if (row == "insufff") {

    return "Insufficient Data";
  } 
  //question framing
  else if (row == "clas")
    return "Does $da study in $value ?";
  
  else if (row == "gen") {
    if (value == "M") {
      regg = "Male";
     // da = "he";
    } else {
      regg = "Female";
    //  da = "she";
    }
    return "Is $da a $regg ?";
  } 
  
  else if (row == "hostel") {
    if (value == "Some other PG") regg = "any PG other than RR";
    else regg=value;
    return "Does $da stay at $regg ?";
  } 
  
  else if (row == "rel")
    return "Is $da a $value ?";

  else if (row == "school")
    return "Did $da study 12th at $value ?";
  
  
  else if (row == "place")
    return "Is $da from $value ?";
  
  
  else if (row == "region") {
    if (value == "M")
      regg = "Middle";
    else if (value == "N")
      regg = "North";
    else
      regg = "South";
    return "Is $da from $regg Kerala?";
  } 
  
  else if (row == "house") {
    if (value == "T")
      regg = "Thandava";
    else if (value == "S")
      regg = "Samhara";
    else if (value == "R")
      regg = "Rakshasa";
    else if (value == "D")
      regg = "Dhruva";
    else
      regg = "Aryans";
    return "Is $da a member of $regg House ?";
  } 
  
  else if (row == "rep")
    return "Is $da a Repeater ?";
  
  else if (row == "ds") 
    return "Is $da a Day Scholar ?";

  else if (row == "specs") 
    return "Does $da often wear spectacles ?";

  else if (row == "singer") 
    return "Is $da a good singer ?";

  else if (row == "programmer") 
    return "Is $da a really good programmer ?";

  else if (row == "dancer") 
    return "Is $da a good dancer ?";
}

otherQuestionEvaluator(String answer){
  if (row == "clas") {
    if (answer == 'y') {
      nclas = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].clas != value) rmp(dataList[i--]);
      }
    } else if (answer == 'n') {
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].clas == value) rmp(dataList[i--]);
      }
    } else {
      nclas = 0;
    }
  } 
  
  else if (row == "gen") {
    
    if (answer == 'y') {
      ngen = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].gen != value) rmp(dataList[i--]);
      }
    } else if (answer == 'n') {
      ngen = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].gen == value) rmp(dataList[i--]);
      }
    } else {
      
      ngen = 0;
    }
  } 
  
  else if (row == "hostel") {
    if (answer == 'y') {
      nhostel = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].hostel != value) rmp(dataList[i--]);
      }
    } else if (answer == 'n') {
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].hostel == value) rmp(dataList[i--]);
      }
    } else {
      idk.add(value);
      nhostel = 0;
    }
  } 
  
  else if (row == "rel") {
    if (answer == 'y') {
      nrel = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].rel != value) rmp(dataList[i--]);
      }
    } else if (answer == 'n') {
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].rel == value) rmp(dataList[i--]);
      }
    } else {
      idk.add(value);
      nrel = 0;
    }
  } 
  
  else if (row == "place") {
    if (answer == 'y') {
      nplace = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].place != value) rmp(dataList[i--]);
      }
    } else if (answer == 'n') {
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].place == value) rmp(dataList[i--]);
      }
    } else {
      idk.add(value);
      nplace = 0;
    }
  } 
  
  else if (row == "school") {
    if (answer == 'y') {
      nschool = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].school != value) rmp(dataList[i--]);
      }
    } else if (answer == 'n') {
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].school == value) rmp(dataList[i--]);
      }
    } else {
      idk.add(value);
      nschool = 0;
    }
  } 

  else if (row == "region") {
    if (answer == 'y') {
      nregion = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].region != value) rmp(dataList[i--]);
      }
    } else if (answer == 'n') {
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].region == value) rmp(dataList[i--]);
      }
    } else {
      nregion = 0;
    }
  } 
  
  else if (row == "house") {
    if (answer == 'y') {
      nhouse = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].house != value) rmp(dataList[i--]);
      }
    } else if (answer == 'n') {
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].house == value) rmp(dataList[i--]);
      }
    } else {
      idk.add(value);
      nhouse = 0;
    }
  } 
  
  else if (row == "rep") {
    if (answer == 'y') {
      nrep = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].rep != 'y') rmp(dataList[i--]);
      }
    } else if (answer == 'n') {
      nrep = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].rep == 'y') rmp(dataList[i--]);
      }
    } else {
      nrep = 0;
    }
  } 

  else if (row == "specs") {
    if (answer == 'y') {
      nspecs = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].specs != 'y') rmp(dataList[i--]);
      }
    } else if (answer == 'n') {
      nrep = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].specs == 'y') rmp(dataList[i--]);
      }
    } else {
      nspecs = 0;
    }
  } 

  else if (row == "singer") {
    if (answer == 'y') {
      nsinger = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].singer != 'y') rmp(dataList[i--]);
      }
    }   else if (answer == 'n') {
      nrep = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].singer == 'y') rmp(dataList[i--]);
      }
    } else {
      nsinger = 0;
    }
  } 

  else if (row == "dancer") {
    if (answer == 'y') {
      ndancer = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].dancer != 'y') rmp(dataList[i--]);
      }
    } else if (answer == 'n') {
      nrep = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].dancer == 'y') rmp(dataList[i--]);
      }
    } else {
      ndancer = 0;
    }
  } 

  else if (row == "programmer") {
    if (answer == 'y') {
      nprogrammer = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].programmer != 'y') rmp(dataList[i--]);
      }
    } else if (answer == 'n') {
      nrep = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].programmer == 'y') rmp(dataList[i--]);
      }
    } else {
      nprogrammer = 0;
    }
  } 
  
  else if (row == "ds") {
    if (answer == 'y') {
      nds = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].ds != 'y') rmp(dataList[i--]);
      }
    } else if (answer == 'n') {
      nds = 0;
      for (int i = 0; i < dataList.length; i++) {
        if (dataList[i].ds == 'y') rmp(dataList[i--]);
      }
    } else {
      nds = 0;
    }
  }
  for(int i=0;i<dataList.length;i++){
    print("${dataList[i].name} - ${dataList[i].clas} \n" );
  }
}
