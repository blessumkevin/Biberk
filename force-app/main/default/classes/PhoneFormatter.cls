public class PhoneFormatter {
    public static String formatPhoneNumber(String phoneNumber) {
        // Remove any non-digit characters
        String digitsOnly = phoneNumber.replaceAll('\\D', '');
        
        // Check if the number has 10 digits
        if (digitsOnly.length() == 10) {
            // Format as (XXX) XXX-XXXX
            return '(' + digitsOnly.substring(0, 3) + ') ' 
                + digitsOnly.substring(3, 6) + '-' 
                + digitsOnly.substring(6);
        } else {
            // Return original input if not 10 digits
            return phoneNumber;
        }
    }
}