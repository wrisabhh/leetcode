class Solution {
public:
    double findMaxAverage(vector<int>& nums, int k) {
        double sum = accumulate(nums.begin(), nums.begin() + k, 0.0);
        double max_avg = sum / k;
        for (int i = k; i < nums.size(); ++i) {
            sum += nums[i] - nums[i - k];
            max_avg = max(max_avg, sum / k);
        }
        return max_avg;
    }
};