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

![Home page](https://github.com/dung11122005/image_github/blob/master/laptopshop/homepage.png)

### 2. Trang sản phẩm

![Trang sản phẩm](https://github.com/dung11122005/image_github/blob/master/laptopshop/sanpham.png)

### 3. Trang chi tiết sản phẩm

![Trang chi tiết sản phẩm](https://github.com/dung11122005/image_github/blob/master/laptopshop/chi_tiet_sp.png)

### 4. Comment sản phẩm

![comment sản phẩm](https://github.com/dung11122005/image_github/blob/master/laptopshop/cmt.png)

### 5. Tìm sản phẩm bằng elasticsearch và filter

![Tìm sản phẩm bằng elasticsearch và filter](https://github.com/dung11122005/image_github/blob/master/laptopshop/search.png)

### 6. Trang cá nhân

![Trang cá nhân](https://github.com/dung11122005/image_github/blob/master/laptopshop/trang_ca_nhan.png)

### 7. Upload ảnh

![Upload ảnh](https://github.com/dung11122005/image_github/blob/master/laptopshop/upload_file.png)

### 8. Admin page

![Admin page](https://github.com/dung11122005/image_github/blob/master/laptopshop/admin_page.png)

### 9. Trang CRUD người dùng, sản phẩm và cập nhật trạng thái đặt hàng

![Trang CRUD người dùng, sản phẩm và cập nhật trạng thái đặt hàng](https://github.com/dung11122005/image_github/blob/master/laptopshop/crud_user_sp.png)

### 10. Trang giỏ hàng

![Trang giỏ hàng](https://github.com/dung11122005/image_github/blob/master/laptopshop/gio_hang.png)

### 11. Trang thanh toán đơn hàng

![Trang thanh toán đơn hàng](https://github.com/dung11122005/image_github/blob/master/laptopshop/trang_thanh_toan.png)

### 12. Thanh toán bằng momo

![Thanh toán bằng momo](https://github.com/dung11122005/image_github/blob/master/laptopshop/thanh_toan_momo2.png)

### 13. Thanh toán bằng momo

![Thanh toán bằng momo](https://github.com/dung11122005/image_github/blob/master/laptopshop/thanh_toan_Momo.png)

### 14. Trang xem trạng thái đơn hàng

![Trang xem trạng thái đơn hàng](https://github.com/dung11122005/image_github/blob/master/laptopshop/status.png)

### 15. Trang đơn mua và trạng thái mọi đơn hàng

![Trang đơn mua và trạng thái mọi đơn hàng](https://github.com/dung11122005/image_github/blob/master/laptopshop/trang_mua_trang_thai.png)

### 16. Trang lịch sử đặt hàng và thông báo

![Trang lịch sử đặt hàng và thông báo](https://github.com/dung11122005/image_github/blob/master/laptopshop/lich_su_dat_hang.png)

### 17. Trang login

![Trang login](https://github.com/dung11122005/image_github/blob/master/laptopshop/login.png)