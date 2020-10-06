//Author:Kody.Hungenberg@gmail.com
public class KataSolutions {

    //if and boolean katas
    public static String returnFalseIfTrue(Boolean bool){
        String trueStr  = ('True');
        String falseStr = ('False');

        if(bool == true){
            return falseStr;
        } else {
            return trueStr;
            
        }
    }
    public static String returnTrueIfFalse(Boolean bool){
        String result;
        //To do: If 'bool' is false, return 'results' as a String with a value of 'True'
        return result;
    }

    public static String returnTrueStrIfTrue(Boolean bool){
        String result;
        //To do: If 'bool' is true, return 'results' as a String with a value of 'True'
        return result;
    }

    //string handling katas
    public static String returnAllUpperCaseStr(String str){
        String result;
        result = str.toUpperCase();

        return result;
    }
    public static String returnAllLowerCaseStr(String str){
        String result;

        return result;
    }
    public static Integer countOfString(String str){
        Integer intResult;
        intResult = str.length();
        return intResult;
    }
    public static String returnFirstLetterCaps(String str){
        String result;

        return result;
    }
    public static String checkAndReturnAllUpper(String str){
        String str1 = str;
        String result;

        return str1;
    }

    public static Boolean returnTrueIfTrue(Boolean bool){
        Boolean result;
        return result;
    }

    public static Boolean returnBooleanIfContains(String Str){
        //You should return a boolean value of TRUE if Str contains any of strVar
        String strVar = 'Abc';

        if(str.contains(strVar)){
            return true;
        } else {
            return false;
        }
    }
    public static Boolean returnBooleanIfContainsOnly(String str){
        //You shoud check and return a boolean of TRUE if str equals exactly strVar 
        String strVar = 'Abc';

        if(str.containsOnly(strVar)){
            return true;
        } else {
            return false;
        }
    }

    public static String returnStrNoSpaces(String str){
        //You should check to see if str has any spaces, remove them and return a string with no spaces
        if(str.containsAny(' ')){
            return str.deleteWhitespace();
        } else { 
            return str;
        }
    }
    //date katas

    public static Date addTenDaysToDate(Date d){
        Date returnDate = d.addDays(10);
        return returnDate;
    }
    public static Date addTwoMonthsToDate(Date d){
        Date returnDate = d.addMonths(2);
        return returnDate;
    }
    public static Date addTwoYearsToDate(Date d){
        Date returnDate = d.addYears(2);
        return returnDate;
    }
    public static Boolean returnTrueIfSameDate(Date d){
        Date checkThisDate = date.newInstance(2010, 1, 20);

        Boolean checkedDate = checkThisDate.isSameDay(d);
        return checkedDate;
    }
    public static Integer returnMonthInteger(Date d){
        Integer dateInt = d.month();
        return dateInt; 
    }
    public static Integer returnMonthsBetweenDates(Date d){
        Date checkThisDate = date.newInstance(2010, 1, 15);

        Integer checkedDate = checkThisDate.monthsBetween(d);
        return checkedDate;
    }

    public static Date returnDateFromString(String str){
        Date returnDate = date.parse(str);
        return returnDate;
    }
}
