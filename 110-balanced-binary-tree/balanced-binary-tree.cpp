/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode() : val(0), left(nullptr), right(nullptr) {}
 *     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
 *     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
 * };
 */
class Solution {
public:
    int maxDepth(TreeNode* root) {
        if (root == nullptr) {
            return 0;
        }
        int h1 = maxDepth(root->left);
        int h2 = maxDepth(root->right);
        return max(h1, h2) + 1;
    }

    bool isBalanced(TreeNode* root) {
        if (root == nullptr)
            return true;

        bool left = isBalanced(root->left);
        bool right = isBalanced(root->right);
        bool diff = abs(maxDepth(root->left) - maxDepth(root->right)) <= 1;

        return left && right && diff;
    }
};
