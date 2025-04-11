class Solution {
public:
    string countAndSay(int n) {
        if(n == 1)return "1";
        if(n == 2)return "11";
        string s = "11";
        for(int i = 3; i <= n; i++){
            string curr = "";
            s += "#";
            int ct = 1;
            for(int j = 1; j < s.size(); j++){
                if(s[j] != s[j-1]){
                    curr += to_string(ct);
                    curr += s[j-1];
                    ct = 1;
                }else ct++;
            }
            s = curr;
        }
        return s;
    }
};