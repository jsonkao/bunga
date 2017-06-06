import java.util.*;
import java.text.*;

final int SCREENWIDTH = 1040;
final int SCREENHEIGHT = 720;

Calendar c;
EventCollection events;
ArrayList<Day> days;
String[] months = {"January", "February", "March", "April", "May", "June", 
                   "July", "August", "September", "October", "November", "December"};
String[] daysOfWeek = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday",
                       "Saturday"};

void setup() {
  surface.setSize( SCREENWIDTH, SCREENHEIGHT );
 Calendar calendar = Calendar.getInstance();               
  SimpleDateFormat sdf = new SimpleDateFormat("MMM/dd/YYYY");
  calendar.set(Calendar.MONTH,Calendar.JUNE);
  calendar.set(Calendar.DAY_OF_MONTH,1);          
  int day = (Calendar.SUNDAY-calendar.get(Calendar.DAY_OF_WEEK));            
  if(day<0){
    calendar.add(Calendar.DATE,7+(day));
  }else{
      calendar.add(Calendar.DATE,day);
  }
  // calendar is now at first SUnday of the month
  calendar.add(Calendar.DAY_OF_MONTH, -7);
  Date start = calendar.getTime();
  drawDaysInMonth( start.getYear(), start.getMonth(), start.getDate());
}

void drawDaysInMonth(int y, int m, int d) {
  for (int i = 0; i < 42; i++) {
    Day day = new Day( y, m, d + i );
    day.display(i);
  }
}
void draw() {
  drawDaysInMonth( 4, 4,4);
}

void drawDay(int x, int y, int z) {}