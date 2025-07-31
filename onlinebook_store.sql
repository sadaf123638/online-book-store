-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2025 at 08:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinebook_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `thumbnail` text DEFAULT NULL,
  `link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `thumbnail`, `link`) VALUES
(1, 'HTML for the World Wide Web', 'Elizabeth Castro', 'http://books.google.com/books/content?id=Dq9L3KkDOFIC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.in/books?id=Dq9L3KkDOFIC&printsec=frontcover&dq=html&hl=&cd=1&source=gbs_api'),
(2, 'HTML and CSS', 'Jon Duckett', 'http://books.google.com/books/content?id=aGjaBTbT0o0C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.in/books?id=aGjaBTbT0o0C&printsec=frontcover&dq=html&hl=&cd=2&source=gbs_api'),
(3, 'Dynamic HTML: The Definitive Reference', 'Danny Goodman', 'http://books.google.com/books/content?id=LLhQAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.in/books?id=LLhQAAAAMAAJ&q=html&dq=html&hl=&cd=3&source=gbs_api'),
(4, 'Learn to Code HTML and CSS', 'Shay Howe', 'http://books.google.com/books/content?id=PNFpAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.in/books?id=PNFpAwAAQBAJ&printsec=frontcover&dq=html&hl=&cd=4&source=gbs_api'),
(5, 'HTML Web Design in 7 Days', 'Unknown', 'http://books.google.com/books/content?id=YwEQoMAJjj8C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.in/books?id=YwEQoMAJjj8C&pg=PA3&dq=html&hl=&cd=5&source=gbs_api'),
(6, 'Web Technologies: Html, Javascript, Php, Java, Jsp, Asp.Net, Xml And Ajax, Black Book (With Cd)', 'Kogent Learning Solutions Inc. (with Cd)', 'http://books.google.com/books/content?id=yC3BbwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.in/books?id=yC3BbwAACAAJ&dq=html&hl=&cd=6&source=gbs_api'),
(7, 'all WIDE WEB DESIGN WITH HTML', 'C. Xavier', 'http://books.google.com/books/content?id=BJVHzwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.in/books?id=BJVHzwEACAAJ&dq=html&hl=&cd=7&source=gbs_api'),
(8, 'HTML5 BLACK BOOK:COVERS CSS3,JAVASCRIPT,XML,XHTML,AJAX,PHP AND JQUERY (With CD )', 'Kogent Learning Solutions Inc.', 'http://books.google.com/books/content?id=kQj4ygAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.in/books?id=kQj4ygAACAAJ&dq=html&hl=&cd=8&source=gbs_api'),
(9, 'Sams Teach Yourself Html And Css In 24 Hours, 7/E', 'Oliver', 'http://books.google.com/books/content?id=gVSDjU7kSrAC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.in/books?id=gVSDjU7kSrAC&printsec=frontcover&dq=html&hl=&cd=9&source=gbs_api'),
(10, 'Head First HTML with CSS & XHTML', 'Elisabeth Freeman', 'http://books.google.com/books/content?id=mN0ymwfmM5QC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.in/books?id=mN0ymwfmM5QC&printsec=frontcover&dq=html&hl=&cd=10&source=gbs_api'),
(11, 'Programming PHP', 'Rasmus Lerdorf', 'http://books.google.com/books/content?id=h-E1lVko-skC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.in/books?id=h-E1lVko-skC&printsec=frontcover&dq=PHP&hl=&cd=1&source=gbs_api'),
(12, 'Modern PHP', 'Josh Lockhart', 'http://books.google.com/books/content?id=03SpBgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.in/books?id=03SpBgAAQBAJ&printsec=frontcover&dq=PHP&hl=&cd=3&source=gbs_api'),
(13, 'PHP & MySQL', 'Jon Duckett', 'http://books.google.com/books/content?id=Z4ShuQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.in/books?id=Z4ShuQEACAAJ&dq=PHP&hl=&cd=4&source=gbs_api'),
(14, 'PHP and MySQL by Example', 'Ellie Quigley', 'http://books.google.com/books/content?id=mPzUH1EPEJkC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.in/books?id=mPzUH1EPEJkC&pg=PA15&dq=PHP&hl=&cd=5&source=gbs_api'),
(15, 'Learning PHP, MySQL & JavaScript', 'Robin Nixon', 'http://books.google.com/books/content?id=vlZaDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.in/books?id=vlZaDwAAQBAJ&printsec=frontcover&dq=PHP&hl=&cd=6&source=gbs_api'),
(16, 'PHP Black Book', 'Peter Moulding', 'http://books.google.com/books/content?id=waBQAAAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.in/books?id=waBQAAAAMAAJ&q=PHP&dq=PHP&hl=&cd=7&source=gbs_api'),
(17, 'PHP and MySQL For Dummies', 'Janet Valade', 'http://books.google.com/books/content?id=OiGO-qd06RIC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.in/books?id=OiGO-qd06RIC&pg=PA128&dq=PHP&hl=&cd=8&source=gbs_api'),
(18, 'Object-Oriented PHP', 'Peter Lavin', 'http://books.google.com/books/content?id=7IVIiQLvBW8C&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.in/books?id=7IVIiQLvBW8C&pg=PR16&dq=PHP&hl=&cd=9&source=gbs_api'),
(19, 'Head First PHP & MySQL', 'Lynn Beighley', 'http://books.google.com/books/content?id=nJWN1dyxaJIC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.in/books?id=nJWN1dyxaJIC&printsec=frontcover&dq=PHP&hl=&cd=10&source=gbs_api'),
(20, 'World Wide Web Design with HTML', 'Xavier', '', 'http://books.google.co.in/books?id=JiwqPQAACAAJ&dq=HTML&hl=&cd=7&source=gbs_api'),
(21, 'Deep Learning', 'Ian Goodfellow', 'http://books.google.com/books/content?id=omivDQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.in/books?id=omivDQAAQBAJ&pg=PP1&dq=HTML&hl=&cd=8&source=gbs_api'),
(22, 'Mastering HTML and XHTML', 'Deborah S. Ray', 'http://books.google.com/books/content?id=ym8nKP7JdHwC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.in/books?id=ym8nKP7JdHwC&pg=PA502&dq=HTML&hl=&cd=9&source=gbs_api'),
(23, 'Learn HTML and CSS with w3Schools', 'W3Schools', 'http://books.google.com/books/content?id=pR87s9L42JUC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.in/books?id=pR87s9L42JUC&printsec=frontcover&dq=HTML&hl=&cd=10&source=gbs_api');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_title_author` (`title`,`author`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
