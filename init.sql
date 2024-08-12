-- User Table
CREATE TABLE IF NOT EXISTS user (
                                    id INT AUTO_INCREMENT PRIMARY KEY,
                                    username VARCHAR(50) NOT NULL UNIQUE,
                                    email VARCHAR(100) NOT NULL UNIQUE,
                                    password_hash VARCHAR(255) NOT NULL,
                                    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Blog Table
CREATE TABLE IF NOT EXISTS blog (
                                    id INT AUTO_INCREMENT PRIMARY KEY,
                                    title VARCHAR(255) NOT NULL,
                                    content TEXT NOT NULL,
                                    user_id INT,
                                    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                                    FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE
);


INSERT INTO user (username, email, password_hash, created_at, updated_at) VALUES
                                                                              ('johndoe', 'johndoe@example.com', '$2a$12$K9Q6X.kOXgNfR5fhU1O0pe/mfW4rsczjdzF9jHp7w.TFNCgDLnCuy', '2024-08-01 10:00:00', '2024-08-01 10:00:00'),
                                                                              ('janedoe', 'janedoe@example.com', '$2a$12$8Jy8dR5ZkG/5.XFGgflQGOfJpC.yXptC4BJnx9/F5I7mNV2n4d6IS', '2024-08-02 11:30:00', '2024-08-02 11:30:00'),
                                                                              ('alexsmith', 'alexsmith@example.com', '$2a$12$1vE6zN.TGA6/Y1mMbsM9EumPfLZ/g1Oq5zThAGD8M1K1aJl1uUkvq', '2024-08-03 15:45:00', '2024-08-03 15:45:00'),
                                                                              ('emilywhite', 'emilywhite@example.com', '$2a$12$d9oM1xjB9DQvSz1bZzJbXOiyE74i6pLTvOgkZ2XcM5Z/Su.yMoN9G', '2024-08-04 09:20:00', '2024-08-04 09:20:00'),
                                                                              ('michaelbrown', 'michaelbrown@example.com', '$2a$12$z/LB4Kv/4/OV9q/XoHTZcOQ8xKcS8XYE5F5drRZUM6ev0qG0ZoFbW', '2024-08-05 14:00:00', '2024-08-05 14:00:00');
INSERT INTO blog (title, content, user_id, created_at, updated_at) VALUES
                                                                       ('My First Blog Post', 'This is the content of my first blog post.', 1, '2024-08-01 11:00:00', '2024-08-01 11:00:00'),
                                                                       ('Traveling to Japan', 'An amazing journey through the beautiful landscapes of Japan.', 2, '2024-08-02 12:00:00', '2024-08-02 12:00:00'),
                                                                       ('Tech Trends 2024', 'A deep dive into the latest technology trends of 2024.', 3, '2024-08-03 16:00:00', '2024-08-03 16:00:00'),
                                                                       ('Healthy Eating Tips', 'Learn how to maintain a healthy diet with these simple tips.', 4, '2024-08-04 10:00:00', '2024-08-04 10:00:00'),
                                                                       ('Starting a Business', 'A comprehensive guide to starting your own business.', 5, '2024-08-05 15:00:00', '2024-08-05 15:00:00');
