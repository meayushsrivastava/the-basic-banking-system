SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Sunny', 'sunny@gmail.com', 93000),
(2, 'Ranbeer', 'ranbeer@gmail.com', 85000),
(3, 'Ram', 'ram@gmail.com', 59000),
(4, 'Ghanshyam', 'ghanshyam@gmail.com', 30000),
(5, 'Sudheer', 'sudheer@gmail.com', 20000),
(6, 'Sudhanshu', 'sudhanshu33@gmail.com', 98000),
(7, 'kaira', 'kaira@gmail.com', 89000),
(8, 'Dinesh', 'deenesh81@gmail.com', 65000),
(9, 'Roshni', 'roshni@gmail.com', 75000),
(10, 'Virat', 'Virat@gmail.com', 3000);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;


ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;


