-- Your database schema. Use the Schema Designer at http://localhost:8001/ to add some tables.
CREATE TABLE posts (
    id INT PRIMARY KEY NOT NULL,
    title TEXT NOT NULL,
    body TEXT NOT NULL
);
CREATE TABLE tags (
    id INT PRIMARY KEY NOT NULL,
    name TEXT NOT NULL
);
CREATE TABLE posts_tags (
    post_id INT NOT NULL,
    tag_id INT NOT NULL,
    PRIMARY KEY(post_id, tag_id)
);
CREATE INDEX posts_tags_post_id_index ON posts_tags (post_id);
CREATE INDEX posts_tags_tag_id_index ON posts_tags (tag_id);
ALTER TABLE posts_tags ADD CONSTRAINT posts_tags_ref_post_id FOREIGN KEY (post_id) REFERENCES posts (id) ON DELETE NO ACTION;
ALTER TABLE posts_tags ADD CONSTRAINT posts_tags_ref_tag_id FOREIGN KEY (tag_id) REFERENCES tags (id) ON DELETE NO ACTION;
