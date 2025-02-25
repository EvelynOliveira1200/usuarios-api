class PostList {
    constructor() {
        this.posts = [];
    };
    
    addPostByUserID(post, userID) {
        post.userID = userID;
        this.posts.push(post);
    };
};

module.exports = PostList;