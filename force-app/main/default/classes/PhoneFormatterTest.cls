@IsTest
private class PhoneFormatterTest {
    @IsTest
    static void testFormatPhoneNumber() {
        // Test with a valid 10-digit number
        String input1 = '1234567890';
        String expected1 = '(123) 456-7890';
        String result1 = PhoneFormatter.formatPhoneNumber(input1);
        System.assertEquals(expected1, result1, 'Phone number formatting failed for 10-digit input');
        
        // Test with a number that already has formatting
        String input2 = '(987) 654-3210';
        String expected2 = '(987) 654-3210';
        String result2 = PhoneFormatter.formatPhoneNumber(input2);
        System.assertEquals(expected2, result2, 'Phone number formatting failed for pre-formatted input');
        
        // Test with an invalid number (not 10 digits)
        String input3 = '12345';
        String expected3 = '12345';
        String result3 = PhoneFormatter.formatPhoneNumber(input3);
        System.assertEquals(expected3, result3, 'Phone number formatting failed for invalid input');
    }
}