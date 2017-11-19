// an array of citydata objects that we are using to store what we want from the csv
CityData[] citydata;

// Table objects in Processing interpret/store csv data
Table table;

class CityData {
  String n;
  float lt;
  float lg;
  int p;
  
  CityData(String name, float latitude, float longitude, int pop) {
    n = name;
    lt = latitude;
    lg = longitude;
    p = pop;
  }  
}

void setup() {
  //uscitiesv1.3.csv was grabbed off the internet.
  // try googling around for different kinds of publicly available data sets.
  table = loadTable("uscitiesv1.3.csv", "header");
  println(table.getRowCount());
  citydata = new CityData[table.getRowCount()];
  
  for (int i = 0; i < table.getRowCount(); i++) {
    TableRow row = table.getRow(i);
    citydata[i] = new CityData(row.getString("city"), row.getFloat("lat"), row.getFloat("lng"), row.getInt("population"));
  }
  
  for (int i = 0; i < citydata.length; i++) {
    println(citydata[i].p);
  }
  
}

void draw() {
  // do something with your citydata objects here
  
}