
DROP DATABASE IF EXISTS `grainmill`;
CREATE DATABASE IF NOT EXISTS `grainmill` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

USE `grainmill`;

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
                         `user_id` int(11) PRIMARY KEY AUTO_INCREMENT,
                         `f_name` varchar(45) DEFAULT NULL,
                         `l_name` varchar(45) DEFAULT NULL,
                         `username` varchar(15) NOT NULL,
                         `password` varchar(64) NOT NULL,
                         `role` VARCHAR(25) DEFAULT 'ROLE_USER',
                         `enabled` tinyint(4) DEFAULT NULL,
                         `image` varchar(45) DEFAULT 'profile.jpg',
                         `email` varchar(110) NOT NULL,
                            `phone` varchar(45) DEFAULT NULL,
                            `address` varchar(45) DEFAULT NULL,
                            `city` varchar(45) DEFAULT NULL,
                            `state` varchar(45) DEFAULT NULL,
                            `country` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`f_name`,`l_name`, `username`, `password`, `role`, `enabled`, `email`, `image`)
VALUES ('admin', 'admin', 'admin', '123', 'ROLE_ADMIN', 1, 'admin@gmail.com', 'admin.jpg'),
       ('user', 'user', 'user', '123', 'ROLE_USER', 1, 'user@gmail.com', 'user.jpg');

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `mprice` int(11) DEFAULT 0,
  `category_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `info` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`name`, `price`, `mprice`, `image`, `category_id`, `quantity`, `info`) VALUES
('Key Teff', 5200, 12, '1.jpg', 0, 200, 'Magna teff'),
('Nech Teff', 6000, 15, '1.jpg', 0, 200, 'Ke Merkato'),
('Magna Teff', 5500, 10, '1.jpg', 0, 200, 'Ke Megenagna');


# ALTER TABLE `products`
#     MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

-- --------------------------------------------------------

--
-- Indexes for table `categories`
--


CREATE TABLE `categories` (
    `category_id` int(11) NOT NULL,
    `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`)
VALUES
    (0, 'grain'),
    (1, 'milled'),
    (2, 'rice');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
    `id` int(11) NOT NULL,
    `password` varchar(20) NOT NULL,
    `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `password`, `username`) VALUES
    (1, '123', '1');

-- --------------------------------------------------------

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD KEY `products_ibfk_1` (`category_id`);

-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE;
COMMIT;


CREATE TABLE `cart` (
        `id` int(11) PRIMARY KEY ,
        `userId` int(11) ,
        `productId` int(11),
        `quantity` int(11) NOT NULL
);

ALTER TABLE `cart`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

# ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
# ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
INSERT INTO `cart` (`userId`, `productId`, `quantity`) VALUES
    ( 1, 1, 10),
( 2, 3, 10),
( 3, 1, 20),
( 1, 2, 30),
( 2, 1, 40);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
