

class Solution {
public:
    bool isPalindrome(int x) {
        // Negative numbers are never palindrome
        if (x < 0) return false;

        int original = x;
        long long reversed = 0;

        while (x > 0) {
            int digit = x % 10;
            
            reversed = reversed * 10 + digit;
            x = x / 10;
        }

        return original == reversed;
    }
};
