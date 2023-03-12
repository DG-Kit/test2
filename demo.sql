-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2023 at 08:28 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `athlete`
--

CREATE TABLE `athlete` (
  `id_athlete` varchar(20) NOT NULL,
  `Name_VDV` varchar(300) NOT NULL,
  `Nationality` varchar(300) NOT NULL,
  `Old` int(20) NOT NULL,
  `Vi_tri` varchar(300) NOT NULL,
  `Kit_Number` int(20) NOT NULL,
  `Match_Number` int(20) NOT NULL,
  `Goal_Number` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `athlete`
--

INSERT INTO `athlete` (`id_athlete`, `Name_VDV`, `Nationality`, `Old`, `Vi_tri`, `Kit_Number`, `Match_Number`, `Goal_Number`) VALUES
('P1', 'Cristiano Ronaldo', 'Bồ Đào Nha', 37, 'Tiền đạo', 7, 100, 75),
('P2', 'Lionel Messi', 'Argentina', 34, 'Tiền đạo', 10, 110, 90),
('P3', 'Neymar Jr', 'Brazil', 29, 'Tiền đạo', 10, 80, 50);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id_news` varchar(20) NOT NULL,
  `Tieu_De` varchar(300) NOT NULL,
  `Noi_Dung` text NOT NULL,
  `Ngay_Dang` date NOT NULL,
  `Tac_Gia` varchar(300) NOT NULL,
  `Hinh_Anh` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id_news`, `Tieu_De`, `Noi_Dung`, `Ngay_Dang`, `Tac_Gia`, `Hinh_Anh`) VALUES
('N1', 'Real Madrid đánh bại Barcelona', 'Real Madrid đã giành chiến thắng 2-1 trước Barcelona ở trận đấu kinh điển của La Liga.', '2021-10-24', 'Nguyễn Văn A', ''),
('N2', 'Lionel Messi đoạt Quả bóng vàng 2021', 'Lionel Messi đã lần thứ 7 giành giải Quả bóng vàng, vượt qua Cristiano Ronaldo và Robert Lewandowski.', '2021-12-05', 'Trần Thị B', ''),
('N3', 'U20 Việt Nam bị loại tại Giải U20 Châu Á', 'Sau trận đấu với Iran vào ngày 07/03/2023, U20 Việt Nam đã chính thức bị loại khỏi giải U20 Quốc tế. Trong trận đấu quyết định vòng bảng, U20 Việt Nam đã thua Iran với tỉ số 1-3. Đây là một kết quả không may cho đội bóng trẻ Việt Nam, nhưng đây cũng là một trải nghiệm quý giá cho các cầu thủ U20 Việt Nam trong việc chuẩn bị cho các giải đấu quốc tế trong tương lai.', '2023-03-07', 'Quỳnh Anh', '../Image/u20vn.png'),
('N4', 'Manchester United thắng Real Betis 4-1 ở Europa League', 'Trong trận đấu lượt về vòng 1/8 Europa League diễn ra vào ngày 9/3/2023, Manchester United đã giành chiến thắng đậm đà trước Real Betis với tỉ số 4-1. Với chiến thắng này, Manchester United đã đặt một chân vào vòng tứ kết của giải đấu. Các cầu thủ của Manchester United đã có một trận đấu ấn tượng, đặc biệt là tiền vệ đội trưởng Bruno Fernandes, người đã ghi một bàn thắng và kiến tạo một bàn nữa trong trận đấu.', '2023-03-10', 'Anh Tuấn', '../Image/mu_betis.jfif'),
('N5', 'Các golfer đang chuẩn bị cho giải Masters 2023', 'Giải đấu golf danh giá nhất thế giới - Masters sẽ diễn ra từ ngày 6 đến ngày 9/4/2023 tại sân Augusta National Golf Club ở Georgia, Mỹ. Các golfer hàng đầu như Tiger Woods, Rory McIlroy, Jordan Spieth, Phil Mickelson đang tích cực tập luyện để chuẩn bị cho giải đấu này. Người hâm mộ trên toàn thế giới đang rất mong chờ để xem ai sẽ trở thành nhà vô địch của Masters năm nay.', '2023-02-28', 'Anh Hiếu', '../Image/Golf-TheMaster.jpeg'),
('N6', 'Xác định chủ nhà, thời gian diễn ra vòng loại môn bóng chuyền Olympic Paris 2024', 'Mới đây, LĐBC Thế giới đã công bố vòng loại môn bóng chuyền của Olympic Paris 2024. Theo đó, Brazil cùng Trung Quốc, Ba Lan và Nhật Bản được lựa chọn làm chủ nhà cho các trận đấu vòng loại.', '2023-01-25', 'Hải Linh', '../Image/Volleyball.jpg'),
('N7', 'Russell Westbrook không vội tìm bến đỗ mới sau khi chia tay Los Angeles Lakers', 'Tại kỳ chuyển nhượng vừa qua, việc Los Angeles Lakers chia tay Russell Westbrook là một trong những thương vụ được quan tâm nhất.\r\n                Ba đội bóng đã bắt tay trong một cú trade lớn, có liên quan đến 8 cầu thủ khác nhau cùng nhiều lượt pick vòng 1 và 2. Trong khi Lakers nhận về DAngelo Russell cùng 2 cầu thủ tiềm năng là Jarred Vanderbilt và Malik Beasley, Utah Jazz chào đón Russell Westbrook cập bến.', '2023-02-22', 'Anh Hải', '../Image/Russell-Westbrook-chia-tay-lakers-bulls-clippers-heat.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id_team` varchar(20) NOT NULL,
  `Team_Name` varchar(300) NOT NULL,
  `Nation` varchar(300) NOT NULL,
  `Founded` year(4) NOT NULL,
  `Stadium` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id_team`, `Team_Name`, `Nation`, `Founded`, `Stadium`) VALUES
('T1', 'Real Madrid', 'Tây Ban Nha', 1902, 'Santiago Bernabeu'),
('T2', 'Manchester United', 'Anh', 1978, 'Old Trafford'),
('T3', 'FC Bayern Munich', 'Đức', 2000, 'Allianz Arena');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `athlete`
--
ALTER TABLE `athlete`
  ADD PRIMARY KEY (`id_athlete`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id_team`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
