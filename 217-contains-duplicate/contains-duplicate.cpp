class Solution {
public:
    bool containsDuplicate(vector<int>& nums) {

	unordered_set <int> s; 
	for(auto a:nums) 
        s.insert(a);
 	if(nums.size()!=s.size()) // Duplicate Elements
	    return true; 
	else return false;
 }

};