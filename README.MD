# ![Icon](https://img.icons8.com/?size=35&id=104233&format=png&color=000000) Laptop Shop

Dự án này được code bằng Java (dự án laptopshop) và độc quyền thuộc về tác giả Hoàng Tấn Dũng

## ![Icon](https://img.icons8.com/?size=20&id=21838&format=png&color=000000) Về tác giả

Mọi thông tin về Tác giả Hoàng Tấn Dũng, các bạn có thể tìm kiếm tại đây:

Youtube “Hoàng Tấn Dũng” : https://www.youtube.com/@crushoicaucutevai7460/featured

Fanpage “Hoàng Tấn Dũng” : https://www.facebook.com/cotem.khong.90?locale=vi_VN

## ![Icon](https://img.icons8.com/?size=25&id=43259&format=png&color=000000) Công nghệ sử dụng

- **Java Spring Boot**: Framework mạnh mẽ để xây dựng backend.

  - **Spring Security**: Đảm bảo bảo mật cho ứng dụng với các tính năng xác thực và phân quyền.

  - **Spring Data JPA**: Quản lý cơ sở dữ liệu dễ dàng thông qua ORM Hibernate.

  - **Spring MVC**: Tách biệt logic và giao diện, áp dụng kiến trúc MVC chuẩn.

  - **Spring Session**: Tích hợp với Spring Boot để quản lý session dễ dàng, có thể sử dụng với cơ sở dữ liệu, Redis hoặc các phương thức lưu trữ khác.

- **JSP (JavaServer Pages)**: Giao diện người dùng được render trên server với **JSTL** để xử lý dữ liệu động.

- **MySQL**: Cơ sở dữ liệu quan hệ để lưu trữ thông tin người dùng, sản phẩm và đơn hàng.

- **Elasticsearch**: Công cụ tìm kiếm và phân tích dữ liệu mạnh mẽ, hỗ trợ lọc sản phẩm theo nhiều tiêu chí.

- **Phân trang**: Giúp tối ưu hóa hiệu năng khi hiển thị danh sách dữ liệu lớn.

## ![Icon](https://img.icons8.com/?size=30&id=111139&format=png&color=000000) Chức năng chính

### **1. Đăng ký, đăng nhập và quản lý phiên**

- Người dùng có thể đăng ký và đăng nhập tài khoản

- Phiên đăng nhập được duy trì để bảo mật và thuận tiện

- Khi chưa đăng nhập, người dùng không thể thêm sản phẩm vào giỏ hàng

### **2. Quản lý phân quyền**
- **Admin**:

  - Toàn quyền quản lý ứng dụng

  - Thực hiện CRUD cho người dùng, sản phẩm và đơn hàng

  - Có khả năng upload file (ví dụ: ảnh sản phẩm)

- **User**:

  - Thêm sản phẩm vào giỏ hàng và đặt hàng

  - Xem trạng thái đơn hàng và lịch sử đặt hàng

  - Đánh giá, comment sản phẩm

  - Sửa thông tin cá nhân và upload file (ví dụ: ảnh đại diện)

- **Shipped**:

  - Cập nhật trạng thái đơn hàng

  - Upload file liên quan đến giao hàng

### **3. Tìm kiếm và lọc sản phẩm**

- Lọc sản phẩm theo một hoặc nhiều tiêu chí cùng lúc (ví dụ: giá, thương hiệu, danh mục)

- Tích hợp **Elasticsearch** để tăng tốc độ tìm kiếm và độ chính xác

### **4. Quản lý đơn hàng**

- Người dùng xem trạng thái đơn hàng hiện tại và lịch sử đặt hàng.

- Shipped cập nhật trạng thái giao hàng, hỗ trợ thông báo cho người dùng.

### **5. Tối ưu hiệu năng**

- Chức năng phân trang được triển khai cho các danh sách lớn (ví dụ: danh sách sản phẩm, đơn hàng)

## ![Icon](https://img.icons8.com/?size=30&id=108805&format=png&color=000000) Cách chạy ứng dụng

1. **Cài đặt yêu cầu hệ thống**:

   - **Java 17+**.

   - **MySQL 8+**.

   - Elasticsearch phiên bản phù hợp.

2. **Thiết lập cơ sở dữ liệu**:

   - Import các file SQL mẫu để khởi tạo database.

   - Cấu hình thông tin kết nối cơ sở dữ liệu trong file `application.properties`.

3. **Chạy ứng dụng**:

   - Build ứng dụng bằng Maven

4. **Truy cập ứng dụng**:

   - Mở trình duyệt và truy cập: `http://localhost:8080`.

## **Có Thể Mở rộng**

- Có thể tích hợp cổng thanh toán `VnPay, PayPal, Stripe`.

- Triển khai lên server thực tế để ứng dụng có thể được sử dụng trong môi trường production.

- Cải thiện giao diện người dùng với các framework hiện đại như Bootstrap hoặc TailwindCSS.

## ![Icon](https://img.icons8.com/?size=30&id=9YgKo9PXNHu4&format=png&color=000000) Ảnh chụp dự án

### 1. Home page

![Home page](https://scontent.fsgn5-5.fna.fbcdn.net/v/t39.30808-6/468357345_122150395466291068_7389740609774153854_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=127cfc&_nc_ohc=hdxCm2JfJ4gQ7kNvgEml1r2&_nc_zt=23&_nc_ht=scontent.fsgn5-5.fna&_nc_gid=AfKqFbmhc5mUnjS4Yvf9l5W&oh=00_AYCtpwwxV3jJ_Pbgw5yiGPCZbhzwrUT6NibMjBuVWiO3mw&oe=67486076)

### 2. Trang sản phẩm

![Trang sản phẩm](https://scontent.fsgn5-9.fna.fbcdn.net/v/t39.30808-6/468042969_122150395520291068_3844525518319800104_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=127cfc&_nc_ohc=MqOZ83b7npYQ7kNvgH_dxBt&_nc_zt=23&_nc_ht=scontent.fsgn5-9.fna&_nc_gid=AzNvteC_2YuEdnhPgMcUVv4&oh=00_AYDqsW7kwYam66zCe94fxll_AVnj93cvGBJ_j5wYgL0PjA&oe=6758A2AD)

### 3. Trang chi tiết sản phẩm

![Trang chi tiết sản phẩm](https://scontent.fsgn5-10.fna.fbcdn.net/v/t39.30808-6/468088207_122150395496291068_7213254627608566744_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=127cfc&_nc_ohc=wPZHf95MjCEQ7kNvgHT6Cp_&_nc_zt=23&_nc_ht=scontent.fsgn5-10.fna&_nc_gid=AZzDyy_llxC3pOn0iwVypW7&oh=00_AYDaVVJxH6ahUTNz1bwlEDp-YbhtrambCJuHHE-QIQdpAg&oe=6758895F)

### 4. Tìm sản phẩm bằng elasticsearch và filter

![Tìm sản phẩm bằng elasticsearch và filter](https://scontent.fsgn5-5.fna.fbcdn.net/v/t39.30808-6/468208935_122150395790291068_4090862263106330607_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=127cfc&_nc_ohc=SQYJwta6iRgQ7kNvgHhRYtt&_nc_zt=23&_nc_ht=scontent.fsgn5-5.fna&_nc_gid=A_0ZkidTX7QxTf7XKcDAYPD&oh=00_AYBPGG_cRxEqJqf1VpVqbeJbzRL5NDDduSLXW8VR9jO9aQ&oe=67589886)

### 5. Trang cá nhân

![Trang cá nhân](https://scontent.fsgn5-8.fna.fbcdn.net/v/t39.30808-6/468147034_122150404394291068_4181066319066834074_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=127cfc&_nc_ohc=naI0xjV-mc0Q7kNvgHHk-U1&_nc_zt=23&_nc_ht=scontent.fsgn5-8.fna&_nc_gid=Ao7OQaRPbAz-lAtAUCwavMZ&oh=00_AYCySTt37pTPuAL63Cu2bUw2l2IAg4rfwEo9W-j2gkisRA&oe=674870CF)

### 6. Admin page

![Admin page](https://scontent.fsgn5-8.fna.fbcdn.net/v/t39.30808-6/468234143_122150395580291068_9046488646030231393_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=127cfc&_nc_ohc=RS1EmQpX6UMQ7kNvgExWAQF&_nc_zt=23&_nc_ht=scontent.fsgn5-8.fna&_nc_gid=AVfroCUIlKUrlmWdviNSH9P&oh=00_AYDZ36zm6RuNZAJ61MK1HW8-vPBjxkdDTJVgJ1GcAOwJdw&oe=67485C34)

### 7. Trang CRUD người dùng, sản phẩm và cập nhật trạng thái đặt hàng

![Trang CRUD người dùng, sản phẩm và cập nhật trạng thái đặt hàng](https://scontent.fsgn5-9.fna.fbcdn.net/v/t39.30808-6/468089144_122150395646291068_7903849632802435327_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=127cfc&_nc_ohc=9SsO7xAuQ7cQ7kNvgHNpzms&_nc_zt=23&_nc_ht=scontent.fsgn5-9.fna&_nc_gid=AFSZmj6R4-tpKMZVAEwHi4M&oh=00_AYCzqE9fYl_PB1vWOiXk8iMAVfIBTs7ItET2LrT5RQ13hA&oe=6758B14A)

### 8. Trang giỏ hàng

![Trang giỏ hàng](https://scontent.fsgn5-14.fna.fbcdn.net/v/t39.30808-6/468088169_122150395700291068_5132530246234596603_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=127cfc&_nc_ohc=ka3p7X0Cgl0Q7kNvgGcpwrQ&_nc_zt=23&_nc_ht=scontent.fsgn5-14.fna&_nc_gid=A0dVfUHKI01YRhgUVrTgaBu&oh=00_AYD8jm9ZfWwdxbifoEBZD-m1TSKC2zNgI8t14z2mFzRv4Q&oe=67486E7F)

### 9. Trang thanh toán đơn hàng

![Trang thanh toán đơn hàng](https://scontent.fsgn5-14.fna.fbcdn.net/v/t39.30808-6/468206587_122150395616291068_8985177916908040915_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=127cfc&_nc_ohc=3YkuMf3c4xYQ7kNvgH0dzsk&_nc_zt=23&_nc_ht=scontent.fsgn5-14.fna&_nc_gid=A-XjJRBYYhik55V-c-SLXMq&oh=00_AYCrJioDVxM1TrxK5x1sbISWMGN_FUGE-qCNTzoDxVZ29w&oe=6758B317)

### 10. Thanh toán bằng momo

![Thanh toán bằng momo](https://scontent.fsgn5-10.fna.fbcdn.net/v/t39.30808-6/469378052_122152056806291068_4912573978544031294_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=127cfc&_nc_ohc=h7Qvm6tuxPAQ7kNvgEsfzFh&_nc_zt=23&_nc_ht=scontent.fsgn5-10.fna&_nc_gid=ARc9b_8vJU53WEOK9BTpvIw&oh=00_AYB3TXpxKH6WCMQwT4hp0oW_t2gcxVvF2mH9KAqbWdnajg&oe=675888A9)

### 11. Thanh toán bằng momo

![Thanh toán bằng momo](https://scontent.fsgn5-10.fna.fbcdn.net/v/t39.30808-6/469453182_122152056830291068_136764137432722680_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=127cfc&_nc_ohc=XrJORRG1FcsQ7kNvgGbEY6w&_nc_zt=23&_nc_ht=scontent.fsgn5-10.fna&_nc_gid=AhO1CrV4FW7rxYXrV29Qszi&oh=00_AYAaULWxfpURXco9k4QGeH6viotp1fPdreS4w-Fg3bJetw&oe=6758915A)

### 12. Trang xem trạng thái đơn hàng

![Trang xem trạng thái đơn hàng](https://scontent.fsgn5-9.fna.fbcdn.net/v/t39.30808-6/468209050_122150395838291068_6232282994774543635_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=127cfc&_nc_ohc=QxBoYXOCkTQQ7kNvgGhLpoR&_nc_zt=23&_nc_ht=scontent.fsgn5-9.fna&_nc_gid=Aeaxzxa-bTpzGDZ0PEnRTE_&oh=00_AYC_OnVDk3ocbLRw4Ckgj0fCr8v0bRF826CRq_W9oUmycg&oe=674854BD)

### 13. Trang đơn mua và trạng thái mọi đơn hàng

![Trang đơn mua và trạng thái mọi đơn hàng](https://scontent.fsgn5-3.fna.fbcdn.net/v/t39.30808-6/468101604_122150404358291068_4077510413719410014_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=127cfc&_nc_ohc=mc9_eAafD3AQ7kNvgHJgj9i&_nc_zt=23&_nc_ht=scontent.fsgn5-3.fna&_nc_gid=Ar3b-AWRedLwoJht-Xy8jjm&oh=00_AYAu7hAJM5G4UbHWI5dMI3fw03n2HLrl42Xn8Mv2Z3OI2Q&oe=67486CEB)

### 14. Trang lịch sử đặt hàng và thông báo

![Trang lịch sử đặt hàng và thông báo](https://scontent.fsgn5-5.fna.fbcdn.net/v/t39.30808-6/468348612_122150395748291068_7764951022912230753_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=127cfc&_nc_ohc=mnVj4Hg_SCcQ7kNvgHpriqm&_nc_zt=23&_nc_ht=scontent.fsgn5-5.fna&_nc_gid=AetCniP0swNm4pAkcDCg25-&oh=00_AYAcNxuL9KHSZIApExpS7NfKcld6d1ilx5Nd1DOTTb-1Gw&oe=674868E1)

### 15. Trang login

![Trang login](https://scontent.fsgn5-5.fna.fbcdn.net/v/t39.30808-6/468140263_122150404334291068_8950719682990869513_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=127cfc&_nc_ohc=XPaKFnAQkcgQ7kNvgG_rrv6&_nc_zt=23&_nc_ht=scontent.fsgn5-5.fna&_nc_gid=A1IJQJnUwq8voKBcbB2UPHc&oh=00_AYAwK8BeC7Pdeo_gaee8Cgd7UvHheF7wASesoM-AgSYIVw&oe=67488D7A)