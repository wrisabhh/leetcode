class Solution {
public:
    int maxSubArray(vector<int>& nums) {
        int maxsum=INT_MIN,countsum=0;
        for (int val : nums){
            countsum+=val;
            maxsum=max(countsum,maxsum);
            if (countsum<0){
                countsum=0;
            }
        }
        return maxsum;
        
    }
};