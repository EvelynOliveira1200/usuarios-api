class PostList {
    constructor() {
        this.posts = [];
    };

    addPost(post) {
        this.posts.push(post);
    }

    getAllPosts() {
        const now = new Date();
        return this.posts.filter(post => (now - new Date(post.createdAt)) <= 30000);
    };

    getPostById(id) {
        const post = this.posts.find(post => post.id === id);
        if (!post) throw new Error("Post não encontrado");
        return post;
    }

    getPostsByUserID(userID) {
        const posts = this.posts.filter(post => post.userID == userID);
        if (!posts) {
            throw new Error("Post not Found");
        }
        return posts;
    }

    updatePost(id, updateData) {
        const post = this.getPostById(id);
        Object.assign(post, updateData);
        return post;
    }

    deletePost(id) {
        this.posts = this.posts.filter((post) => post.id != id);
    }
};

module.exports = PostList;