/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution {
public:
     int getL(ListNode*head){
        int len=0;
        while(head){
            len++;
            head=head->next;
        }
        return len;
     }
    ListNode* rotateRight(ListNode* head, int k) {

         if(!head) return 0;
         int len = getL(head);
         int actualR = (k%len);
         if(actualR == 0) return head;
         int newlastnodePos = len-actualR-1;
         ListNode*newlastnode=head;
         for(int i=0; i<newlastnodePos;i++){
            newlastnode=newlastnode->next;
         }
        ListNode*newHead  = newlastnode->next;
         newlastnode->next=0;
         ListNode*it = newHead;
         while(it->next){
            it=it->next;
         }
         it->next=head;
         return newHead;

        
    }
};