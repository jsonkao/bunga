class DayCollection {
  
  ArrayList<Day> days;
  int size;
  
  DayCollection() {
    days = new ArrayList<Day>();
    size = 0;
  }
  
  void add(Day d) {
    days.add(d);
    size++;
  }
  
  Day get(int i) {
    if (i < 0 || i >= size) {
      throw new IndexOutOfBoundsException("" + i);
    }
    return days.get(i);
  }
  
  void toMonth() {
    size = 42;
  }
  
  void toWeek() {
    size = 7;
  }
  
  void toDay() {
    size = 1;
  }
}