<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sport News</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="../css/main.css" />
    <script src="script.js"></script>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css"
    />

    <script
      src="https://code.jquery.com/jquery-3.6.3.js"
      integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <script>
      $(document).ready(function () {
        $(".navbar-toggler").click(function () {
          $(".collapse").slideToggle();
        });
      });
    </script>

    <div class="">
      <header>
        <nav class="navbar navbar-expand-lg">
          <div class="container-fluid d-flex flex-column">
          <div class="navbar-top">
              <div class="navbar-left">
                <img src="../Image/SNlogo.jpg" alt="Sport News Logo">
              </div>
              <div class="navbar-right">
                <button class="login-button"><i class="fa fa-user"></i> Đăng nhập</button>
                <button class="notification-button"><i class="fa fa-bell"></i></button>
              </div>
            </div>
        
            <div class="navbar-bottom">
              <button
                class="navbar-toggler navbar-light"
                type="button"
                data-toggle="collapse"
                data-target="#collapsibleNavbar"
              >
                <span class="navbar-toggler-icon"></span>
              </button>
        
              <div
                class="collapse navbar-collapse"
                id="collapsibleNavbar"
              >
                <ul class="navbar-nav mx-auto">
                  <li class="nav-item">
                    <a class="nav-link active" href="../index.html">Trang chủ</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Bóng đá</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Quần vợt</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Cầu lông</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Bóng chuyền</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Khác</a>
                  </li>
                </ul>
                <form class="d-flex" action="search.php" method="get">
                  <div class="input-group">
                      <input type="search" class="form-control" placeholder="Search" name="search">
                      <button class="btn" type="submit">
                          <i class="fa fa-search"></i>
                      </button>
                  </div>
              </form>
              </div>
            </div>
          </div>
        </nav>
      </header>

      <main class="container">
      <div class="row">
        <section class="col-md-8">
          <h2>Tin tức bạn tìm kiếm</h2>
          <article class="my-4">
  <div class="row">
    <div class="col">
      <?php
      require_once('test.php');
      if(isset($_GET['search']) && !empty($_GET['search'])){
        $search_term = mysqli_real_escape_string($conn, $_GET['search']);
        $sql = "SELECT * FROM news WHERE Tieu_De LIKE '%{$search_term}%'"; 
        $result = mysqli_query($conn, $sql);
        if(mysqli_num_rows($result) > 0) {
          while($row = mysqli_fetch_assoc($result)){
            echo "<h3><span class='text-danger'>{$row['Tieu_De']}</span></h3>";
            echo "<img src='{$row['Hinh_Anh']}' alt='Ảnh minh họa'>";
            echo "<p class='lead'>{$row['Noi_Dung']}</p>";
          }
        } else {
          echo "<span class='text-danger'>Không tìm thấy kết quả phù hợp!</span>";
        }
      } else {
        echo "<span class='text-danger'>Vui lòng nhập từ khóa tìm kiếm!</span>";
      }
      ?>
    </div>
  </div>
</article>
        </section>
        <aside class="col-md-4">
          <h2>Tin nổi bật</h2>
            <ul>
              <li><a href="#">HLV Conte: 'Richarlison khá ích kỷ'</a></li>
              <li><a href="#">HLV PSG đổ lỗi cho chấn thương</a></li>
              <li><a href="#">Wilander: 'Bị cấm vào Mỹ tốt cho Djokovic'</a></li>
              <li><a href="#">Bất ngờ trong ngày mở màn The Players</a></li>
              <hr>
              <li><h2>Video</h2></li>
              <li>
                <video src="../Video/Áp lực mà HLV Troussier tạo ra giúp U23 Việt Nam có nhiều tiến bộ.mp4" controls></video>
                <p>HLV Troussier buộc thủ môn chơi bóng bằng chân.</p>
              </li>
            </ul>
        </aside>
      </div>
      </main>

      <footer class="bg-dark text-white py-4">
        <div class="container">
          <div class="row">
            <div class="col-md-4">
              <p>&copy; Copy Right 2023. All Rights Reserved.</p>
            </div>
            <div class="col-md-4">
              <p>Sports:</p>
              <ul>
                <li>Football</li>
                <li>Basketball</li>
                <li>Tennis</li>
                <li>Golf</li>
              </ul>
            </div>
            <div class="col-md-4">
              <p>Contact Us:</p>
              <ul>
                <li><i class="fa fa-solid fa-phone fa-1x"></i> +84 123-456-78</li>
                <li>
                  <i class="fa fa-solid fa-envelope"></i></i> 521h0090@website.com
                </li>
              </ul>
              <div class="social-icons">
                <a href="#" id="fb"><i class="fa fa-facebook fa-3x"></i></a>
                <a href="#" id="ins"><i class="fa fa-instagram fa-3x"></i></a>
                <a href="#" id="lkin"><i class="fa fa-linkedin fa-3x"></i></a>
                <a href="#" id="prin"><i class="fa fa-pinterest fa-3x"></i></a>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4">
            </div>
            <div class="col-md-4">
              <p>Address:</p>
              <div class="address">
                <p>19 Đ. Nguyễn Hữu Thọ</p>
                <p>Tân Hưng, Quận 7, Thành phố Hồ Chí Minh</p>
              </div>
            </div>
            <div class="col-md-4">
              <p>Subscribe to our newsletter:</p>
              <form>
                <div class="form-group">
                  <input type="email" class="form-control" id="emailInput" placeholder="Enter your email">
                  <button type="submit" class="btn">Subscribe</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </body>
</html>

<style>
  section {
    margin-top: 0;
    padding-top: 0;
  }
  section h2 {
    margin-top: 0;
    padding-top: 0;
  }
</style>