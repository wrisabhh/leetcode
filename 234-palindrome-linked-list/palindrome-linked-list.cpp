class Solution {
public:
    bool isPalindrome(ListNode* head) {
        if (!head) return true;

        // Find the middle
        ListNode* slow = head, *fast = head;
        while (fast && fast->next) {
            slow = slow->next;
            fast = fast->next->next;
        }

        // Reverse the second half
        ListNode* prev = nullptr;
        while (slow) {
            ListNode* nextNode = slow->next;
            slow->next = prev;
            prev = slow;
            slow = nextNode;
        }

        // Compare both halves
        ListNode* firstHalf = head, *secondHalf = prev;
        while (secondHalf) {
            if (firstHalf->val != secondHalf->val) return false;
            firstHalf = firstHalf->next;
            secondHalf = secondHalf->next;
        }

        return true;
    }
};