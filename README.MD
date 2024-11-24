# ![Icon](https://img.icons8.com/?size=35&id=104233&format=png&color=000000) Laptop Shop
Dự án này được code bằng Java (dự án laptopshop) và độc quyền thuộc về tác giả Hoàng Tấn Dũng

## Về tác giả
Mọi thông tin về Tác giả Hoàng Tấn Dũng, các bạn có thể tìm kiếm tại đây:

Youtube “Hoàng Tấn Dũng” : https://www.youtube.com/@crushoicaucutevai7460/featured

Fanpage “Hoàng Tấn Dũng” : https://www.facebook.com/cotem.khong.90?locale=vi_VN

## ![Icon](https://img.icons8.com/?size=20&id=43259&format=png&color=000000) Công nghệ sử dụng

- **Java Spring Boot**: Framework mạnh mẽ để xây dựng backend.

  - **Spring Security**: Đảm bảo bảo mật cho ứng dụng với các tính năng xác thực và phân quyền.

  - **Spring Data JPA**: Quản lý cơ sở dữ liệu dễ dàng thông qua ORM Hibernate.

  - **Spring MVC**: Tách biệt logic và giao diện, áp dụng kiến trúc MVC chuẩn.

- **JSP (JavaServer Pages)**: Giao diện người dùng được render trên server với **JSTL** để xử lý dữ liệu động.

- **MySQL**: Cơ sở dữ liệu quan hệ để lưu trữ thông tin người dùng, sản phẩm và đơn hàng.

- **Elasticsearch**: Công cụ tìm kiếm và phân tích dữ liệu mạnh mẽ, hỗ trợ lọc sản phẩm theo nhiều tiêu chí.

- **Session**: Quản lý trạng thái người dùng, duy trì phiên đăng nhập an toàn.

- **Phân trang**: Giúp tối ưu hóa hiệu năng khi hiển thị danh sách dữ liệu lớn.

## ![Icon](https://img.icons8.com/?size=25&id=9YgKo9PXNHu4&format=png&color=000000) Chức năng chính

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

## **Cách chạy ứng dụng**

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
- Có thể tích hợp cổng thanh toán VnPay
- Triển khai lên server thực tế để ứng dụng có thể được sử dụng trong môi trường production.
- Tích hợp thêm các cổng thanh toán quốc tế như PayPal, Stripe.
- Cải thiện giao diện người dùng với các framework hiện đại như Bootstrap hoặc TailwindCSS.

## ![Icon](https://img.icons8.com/?size=25&id=9YgKo9PXNHu4&format=png&color=000000) Ảnh chụp dự án

### 1. Home page
![Home page](https://scontent.fsgn5-5.fna.fbcdn.net/v/t39.30808-6/468357345_122150395466291068_7389740609774153854_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=127cfc&_nc_ohc=hdxCm2JfJ4gQ7kNvgEml1r2&_nc_zt=23&_nc_ht=scontent.fsgn5-5.fna&_nc_gid=AfKqFbmhc5mUnjS4Yvf9l5W&oh=00_AYCtpwwxV3jJ_Pbgw5yiGPCZbhzwrUT6NibMjBuVWiO3mw&oe=67486076)

### 2. Trang sản phẩm
![Trang sản phẩm](https://scontent.fsgn5-9.fna.fbcdn.net/v/t39.30808-6/468042969_122150395520291068_3844525518319800104_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=127cfc&_nc_ohc=nooZlwie2k8Q7kNvgECwnTN&_nc_zt=23&_nc_ht=scontent.fsgn5-9.fna&_nc_gid=AcpqIqh-EOlW8yQIJG-rxmR&oh=00_AYBX7s-hJCku2Tvpdh-67b1828B9HqtAi3WSnV2WWC2mvA&oe=6748602D)

### 3. Trang chi tiết sản phẩm
![Trang chi tiết sản phẩm](https://scontent.fsgn5-10.fna.fbcdn.net/v/t39.30808-6/468088207_122150395496291068_7213254627608566744_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=127cfc&_nc_ohc=RU-Ywlmu0lwQ7kNvgG4mnqL&_nc_zt=23&_nc_ht=scontent.fsgn5-10.fna&_nc_gid=Ae_lSnTmJ-78nhyaPMpeNyn&oh=00_AYCaT11zNKMlBrRBztzaK2Rrr43QHqT6KbFqFiZATEqBug&oe=67487F1F)

### 4. Tìm sản phẩm bằng elasticsearch và filter
![Tìm sản phẩm bằng elasticsearch và filter](https://scontent.fsgn5-5.fna.fbcdn.net/v/t39.30808-6/468208935_122150395790291068_4090862263106330607_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=127cfc&_nc_ohc=gLSh2RO5GC4Q7kNvgFrAWsx&_nc_zt=23&_nc_ht=scontent.fsgn5-5.fna&_nc_gid=AXe9MjNKJOf9z-t4Z2CUx-J&oh=00_AYCOSsFy5GBlKSjaypCcT7KF2nDibStPLIEEzODVbtniAA&oe=67485606)

### 5. Admin page
![Admin page](https://scontent.fsgn5-8.fna.fbcdn.net/v/t39.30808-6/468234143_122150395580291068_9046488646030231393_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=127cfc&_nc_ohc=RS1EmQpX6UMQ7kNvgExWAQF&_nc_zt=23&_nc_ht=scontent.fsgn5-8.fna&_nc_gid=AVfroCUIlKUrlmWdviNSH9P&oh=00_AYDZ36zm6RuNZAJ61MK1HW8-vPBjxkdDTJVgJ1GcAOwJdw&oe=67485C34)

### 6. Trang CRUD người dùng, sản phẩm và cập nhật trạng thái đặt hàng
![Trang CRUD người dùng, sản phẩm và cập nhật trạng thái đặt hàng](https://scontent.fsgn5-9.fna.fbcdn.net/v/t39.30808-6/468089144_122150395646291068_7903849632802435327_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=127cfc&_nc_ohc=M4HVBPN2xQEQ7kNvgGXUMl_&_nc_zt=23&_nc_ht=scontent.fsgn5-9.fna&_nc_gid=A3dku5r_BLMwwpmx3aCHXrW&oh=00_AYBRJ2AxRB_wpqYULf2N2nTvly617xpgejOgWsGuxyTLPw&oe=67486ECA)

### 7. Trang giỏ hàng
![Trang giỏ hàng](https://scontent.fsgn5-14.fna.fbcdn.net/v/t39.30808-6/468088169_122150395700291068_5132530246234596603_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=127cfc&_nc_ohc=ka3p7X0Cgl0Q7kNvgGcpwrQ&_nc_zt=23&_nc_ht=scontent.fsgn5-14.fna&_nc_gid=A0dVfUHKI01YRhgUVrTgaBu&oh=00_AYD8jm9ZfWwdxbifoEBZD-m1TSKC2zNgI8t14z2mFzRv4Q&oe=67486E7F)

### 8. Trang thanh toán đơn hàng
![Trang thanh toán đơn hàng](https://scontent.fsgn5-14.fna.fbcdn.net/v/t39.30808-6/468206587_122150395616291068_8985177916908040915_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=127cfc&_nc_ohc=evEHW4MgxlwQ7kNvgEomIkS&_nc_zt=23&_nc_ht=scontent.fsgn5-14.fna&_nc_gid=AF3N2P7dRcITJTJos5iYImJ&oh=00_AYBQNg_1AYzpqn8ausnm8_5xopetd9KjD5VW0HIsxOsQ5g&oe=67487097)

### 9. Trang xem trạng thái đơn hàng
![Trang xem trạng thái đơn hàng](https://scontent.fsgn5-9.fna.fbcdn.net/v/t39.30808-6/468209050_122150395838291068_6232282994774543635_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=127cfc&_nc_ohc=QxBoYXOCkTQQ7kNvgGhLpoR&_nc_zt=23&_nc_ht=scontent.fsgn5-9.fna&_nc_gid=Aeaxzxa-bTpzGDZ0PEnRTE_&oh=00_AYC_OnVDk3ocbLRw4Ckgj0fCr8v0bRF826CRq_W9oUmycg&oe=674854BD)

### 10. Trang lịch sử đặt hàng và thông báo
![Trang lịch sử đặt hàng và thông báo](https://scontent.fsgn5-5.fna.fbcdn.net/v/t39.30808-6/468348612_122150395748291068_7764951022912230753_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=127cfc&_nc_ohc=mnVj4Hg_SCcQ7kNvgHpriqm&_nc_zt=23&_nc_ht=scontent.fsgn5-5.fna&_nc_gid=AetCniP0swNm4pAkcDCg25-&oh=00_AYAcNxuL9KHSZIApExpS7NfKcld6d1ilx5Nd1DOTTb-1Gw&oe=674868E1)