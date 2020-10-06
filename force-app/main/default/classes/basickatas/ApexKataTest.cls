//Author:Kody.Hungenberg@gmail.com
@IsTest
public class ApexKataTest {


    //Boolean handling & conversion
    @IsTest
    private static void shouldReturnFalseStr(){
        Boolean bool = true;
        String result = ApexKata.returnFalseStrIfTrue(bool);
        System.assertEquals('False',result.trim(), 'Should return a String with value of False');
    }
    @IsTest
    private static void shouldReturnTrueStr(){
        Boolean bool = false;
        String result = ApexKata.returnFalseStrIfTrue(bool);
        System.assertEquals('True',result.trim(),'Should return a String with value of True');
    }
    @IsTest
    private static void shouldReturnFalseIfTrue(){
        Boolean bool1 = false;
        Boolean bool2 = true;
        Boolean result1 = ApexKata.returnFalseIfTrue(bool1);
        System.assertEquals(true, result1, 'Should return a value of false if value is true and true if false');
        Boolean result2 = ApexKata.returnFalseIfTrue(bool2);
        System.assertEquals(false, result2, 'Should return a value of false if value is true and true if false');

    }
    //string handling tests
    @IsTest
    private static void shouldReturnAllUpperCaseStr(){
        String str = 'AaBbCcDd';
        String result = ApexKata.returnAllUpperCaseStr(str);
        System.assertEquals('AABBCCDD',result,'Should return a string of all uppercase');
    }
    @IsTest
    private static void shouldReturnAllLowerCaseStr(){
        String str = 'AaBbCcDd';
        String result = ApexKata.returnAllLowerCaseStr(str);
        System.assertEquals('aabbccdd',result,'Should return a string of all lowercase');
    }
    @IsTest
    private static void shouldCheckAndReturnAllUpper(){
        //method should check if a string is all lowercase, if true return that string,
        //if false convert to all upper and return
        List<String> strList = new List<String>{'AaBBcc','AABBCc','AABBCC','aabbcc'};
        for(String r : strList){
            String result = ApexKata.checkAndReturnAllUpper(r);
            System.assert(result.isAllUpperCase());
        }
    }
    @IsTest
    private static void shouldCheckAndReturnAllLower(){
        //method should check if a string is all uppercase, if true return that string,
        //if false convert to all upper and return
        List<String> strList = new List<String>{'AaBBcc','AABBCc','AABBCC','aabbcc'};
        for(String r : strList){
            String result = ApexKata.checkAndReturnAllLower(r);
            System.assert(result.isAllLowerCase());
        }
    }
    @IsTest
    private static void shouldReturnFirstLetterCaps(){
        String str1 = 'abc';
        String result = ApexKata.returnFirstLetterCaps(str1);
        System.assertEquals('Abc', result.trim());
    }
    @IsTest
    private static void shouldReturnCountOfStr(){
        
        String str1 = 'Hello';
        String str2 = 'to';
        String str3 = 'the';
        String str4 = 'World';
 
        Integer result1 = ApexKata.countOfString(str1);
        System.assertEquals(5, result1);
        Integer result2 = ApexKata.countOfString(str2);
        System.assertEquals(2, result2);
        Integer result3 = ApexKata.countOfString(str3);
        System.assertEquals(3, result3);
        Integer result4 = ApexKata.countOfString(str4);
        System.assertEquals(5, result4); 

    }

    @IsTest
    private static void shouldReturnBooleanIfContains(){
        String str1 = 'Abc';
        String str2 = 'eee';
        String str3 = 'Abcdee';
        String str4 = '';

        Boolean result1 = ApexKata.returnBooleanIfContains(str1);
        System.assertEquals(true, result1, 'Should return boolean: true');
        Boolean result2 = ApexKata.returnBooleanIfContains(str2);
        System.assertEquals(false, result2, 'Should return boolean: false');
        Boolean result3 = ApexKata.returnBooleanIfContains(str3);
        System.assertEquals(true, result3, 'Should return boolean: true');
        Boolean result4 = ApexKata.returnBooleanIfContains(str4);
        System.assertEquals(false, result4, 'Should return boolean: false');

    }

    @IsTest
    private static void shouldReturnBooleanIfContainsOnly(){
        String str1 = 'Abc';
        String str2 = 'eee';
        String str3 = 'Abcdee';

        Boolean result1 = ApexKata.returnBooleanIfContainsOnly(str1);
        System.assertEquals(true, result1, '1 Should return boolean: true');
        Boolean result2 = ApexKata.returnBooleanIfContainsOnly(str2);
        System.assertEquals(false, result2, '2 Should return boolean: false');
        Boolean result3 = ApexKata.returnBooleanIfContainsOnly(str3);
        System.assertEquals(false, result3, '3 Should return boolean: true');
    }
    @IsTest
    private static void shouldReturnStringNoSpaces(){
        String str1 = 'Abc ';
        String str2 = ' Abc ';
        String str3 = 'Abc d ';
        String str4 = 'a b c d';

        String result1 = ApexKata.returnStrNoSpaces(str1);
        System.assertEquals(true, result1.containsNone(' '));
        String result2 = ApexKata.returnStrNoSpaces(str2);
        System.assertEquals(true, result2.containsNone(' '));
        String result3 = ApexKata.returnStrNoSpaces(str3);
        System.assertEquals(true, result3.containsNone(' '));
        String result4 = ApexKata.returnStrNoSpaces(str4);
        System.assertEquals(true, result4.containsNone(' '));
    }
//Date handling
    @IsTest
    private static void shouldAddTenDaysToDate(){
        Date d = date.newInstance(2010, 1, 15);
        Date expectedDate = date.newInstance(2010, 1, 25);

        Date returnDate = ApexKata.addTenDaysToDate(d);
        System.assertEquals(expectedDate, returnDate);
    }
    @IsTest
    private static void shouldAddTwoMonthsToDate(){
        Date d = date.newInstance(2010, 1, 15);
        Date expectedDate = date.newInstance(2010, 3, 15);

        Date returnDate = ApexKata.addTwoMonthsToDate(d);
        System.assertEquals(expectedDate, returnDate);
    }
    @IsTest
    private static void shouldAddTwoYearsToDate(){
        Date d = date.newInstance(2010, 1, 15);
        Date expectedDate = date.newInstance(2012, 1, 15);

        Date returnDate = ApexKata.addTwoYearsToDate(d);
        System.assertEquals(expectedDate, returnDate);
    }
    @IsTest
    private static void shouldReturnTrueIfSameDate(){
        Date d1 = date.newInstance(2010, 1, 15);
        Date d2 = date.newInstance(2010, 1, 5);
        Date d3 = date.newInstance(2010, 1, 20);

        Boolean returnedBool1 = ApexKata.returnTrueIfSameDate(d1);
        System.assertEquals(false, returnedBool1);
        Boolean returnedBool2 = ApexKata.returnTrueIfSameDate(d2);
        System.assertEquals(false, returnedBool2);
        Boolean returnedBool3 = ApexKata.returnTrueIfSameDate(d3);
        System.assertEquals(true, returnedBool3);
    }

    @IsTest
    private static void shouldReturnMonthInteger(){
        Date d1 = date.newInstance(2010, 1, 15);
        Date d2 = date.newInstance(2010, 5, 15);
        Date d3 = date.newInstance(2010, 6, 15);

        Integer returnedInt1 = ApexKata.returnMonthInteger(d1);
        System.assertEquals(1, returnedInt1);
        Integer returnedInt2 = ApexKata.returnMonthInteger(d2);
        System.assertEquals(5, returnedInt2);
        Integer returnedInt3 = ApexKata.returnMonthInteger(d3);
        System.assertEquals(6, returnedInt3);
    }

    @IsTest
    private static void shouldReturnMonthsBetweenDates(){
        Date d1 = date.newInstance(2010, 1, 15);
        Date d2 = date.newInstance(2010, 5, 15);
        Date d3 = date.newInstance(2010, 6, 15);

        Integer returnedInt1 = ApexKata.returnMonthsBetweenDates(d1);
        System.assertEquals(0, returnedInt1);
        Integer returnedInt2 = ApexKata.returnMonthsBetweenDates(d2);
        System.assertEquals(4, returnedInt2);
        Integer returnedInt3 = ApexKata.returnMonthsBetweenDates(d3);
        System.assertEquals(5, returnedInt3);
    }

    @IsTest
    private static void shouldReturnDateFromString(){
        String stringDate = '01/15/2010';
        Date expectedDate = date.newInstance(2010, 1, 15);

        Date returnedDate = ApexKata.returnDateFromString(stringDate);
        System.assertEquals(expectedDate, returnedDate);
    }

}
