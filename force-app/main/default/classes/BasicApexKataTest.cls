@IsTest
public class BasicApexKataTest {
//Author:Kody.Hungenberg@gmail.com
//

    //Boolean handling & conversion
    @IsTest
    private static void shouldReturnFalseStr(){
        Boolean bool = true;
        String result = BasicApexKata.returnFalseStrIfTrue(bool);
        System.assertEquals('False',result.trim(), 'Should return a String with value of False');
    }
    @IsTest
    private static void shouldReturnTrueStr(){
        Boolean bool = false;
        String result = BasicApexKata.returnFalseStrIfTrue(bool);
        System.assertEquals('True',result.trim(),'Should return a String with value of True');
    }
    @IsTest
    private static void shouldReturnFalseIfTrue(){
        Boolean bool1 = false;
        Boolean bool2 = true;
        Boolean result1 = BasicApexKata.returnFalseIfTrue(bool1);
        System.assertEquals(true, result1, 'Should return a value of false if value is true and true if false');
        Boolean result2 = BasicApexKata.returnFalseIfTrue(bool2);
        System.assertEquals(false, result2, 'Should return a value of false if value is true and true if false');

    }
    //string handling tests
    @IsTest
    private static void shouldReturnAllUpperCaseStr(){
        String str = 'AaBbCcDd';
        String result = BasicApexKata.returnAllUpperCaseStr(str);
        System.assertEquals('AABBCCDD',result,'Should return a string of all uppercase');
    }
    @IsTest
    private static void shouldReturnAllLowerCaseStr(){
        String str = 'AaBbCcDd';
        String result = BasicApexKata.returnAllLowerCaseStr(str);
        System.assertEquals('aabbccdd',result,'Should return a string of all lowercase');
    }
    @IsTest
    private static void shouldCheckAndReturnAllUpper(){
        //method should check if a string is all lowercase, if true return that string,
        //if false convert to all upper and return
        List<String> strList = new List<String>{'AaBBcc','AABBCc','AABBCC','aabbcc'};
        for(String r : strList){
            String result = BasicApexKata.checkAndReturnAllUpper(r);
            System.assert(result.isAllUpperCase());
        }
    }
    @IsTest
    private static void shouldCheckAndReturnAllLower(){
        //method should check if a string is all uppercase, if true return that string,
        //if false convert to all upper and return
        List<String> strList = new List<String>{'AaBBcc','AABBCc','AABBCC','aabbcc'};
        for(String r : strList){
            String result = BasicApexKata.checkAndReturnAllLower(r);
            System.assert(result.isAllLowerCase());
        }
    }
    @IsTest
    private static void shouldReturnFirstLetterCaps(){
        String str1 = 'abc';
        String result = BasicApexKata.returnFirstLetterCaps(str1);
        System.assertEquals('Abc', result.trim());
    }
    @IsTest
    private static void shouldReturnCountOfStr(){
        
        String str1 = 'Hello';
        String str2 = 'to';
        String str3 = 'the';
        String str4 = 'World';
 
        Integer result1 = BasicApexKata.countOfString(str1);
        System.assertEquals(5, result1);
        Integer result2 = BasicApexKata.countOfString(str2);
        System.assertEquals(2, result2);
        Integer result3 = BasicApexKata.countOfString(str3);
        System.assertEquals(3, result3);
        Integer result4 = BasicApexKata.countOfString(str4);
        System.assertEquals(5, result4); 

//todo: unfuck this loop mess \/
/*
        List<String> str = new List<String>{'Hello', 'to', 'the', 'world'};
        List<Integer> intList = new List<Integer>{5,2,3,5};
        for(String s : str){
            System.debug(s);
            Integer result = BasicApexKata.countOfString(s);
            for(Integer i : intList){
                System.debug(i);
                System.assertEquals(i, result);
            }
            
        } */
    }

    @IsTest
    private static void shouldReturnBooleanIfContains(){
        String str1 = 'Abc';
        String str2 = 'eee';
        String str3 = 'Abcdee';
        String str4 = '';

        Boolean result1 = BasicApexKata.returnBooleanIfContains(str1);
        System.assertEquals(true, result1, 'Should return boolean: true');
        Boolean result2 = BasicApexKata.returnBooleanIfContains(str2);
        System.assertEquals(false, result2, 'Should return boolean: false');
        Boolean result3 = BasicApexKata.returnBooleanIfContains(str3);
        System.assertEquals(true, result3, 'Should return boolean: true');
        Boolean result4 = BasicApexKata.returnBooleanIfContains(str4);
        System.assertEquals(false, result4, 'Should return boolean: false');

    }

    @IsTest
    private static void shouldReturnBooleanIfContainsOnly(){
        String str1 = 'Abc';
        String str2 = 'eee';
        String str3 = 'Abcdee';

        Boolean result1 = BasicApexKata.returnBooleanIfContainsOnly(str1);
        System.assertEquals(true, result1, '1 Should return boolean: true');
        Boolean result2 = BasicApexKata.returnBooleanIfContainsOnly(str2);
        System.assertEquals(false, result2, '2 Should return boolean: false');
        Boolean result3 = BasicApexKata.returnBooleanIfContainsOnly(str3);
        System.assertEquals(false, result3, '3 Should return boolean: true');
    }
    @IsTest
    private static void shouldReturnStrNoSpaces(){
        String str1 = 'Abc ';
        String str2 = ' Abc ';
        String str3 = 'Abc d ';
        String str4 = 'a b c d';

        String result1 = BasicApexKata.returnStrNoSpaces(str1);
        System.assertEquals(true, result1.containsNone(' '));
        String result2 = BasicApexKata.returnStrNoSpaces(str2);
        System.assertEquals(true, result2.containsNone(' '));
        String result3 = BasicApexKata.returnStrNoSpaces(str3);
        System.assertEquals(true, result3.containsNone(' '));
        String result4 = BasicApexKata.returnStrNoSpaces(str4);
        System.assertEquals(true, result4.containsNone(' '));
    }

}
