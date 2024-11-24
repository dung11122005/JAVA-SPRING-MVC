# ![Icon](https://img.icons8.com/?size=40&id=104233&format=png&color=000000) Laptop Shop
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

- **VNPay**: Tích hợp thanh toán trực tuyến, mang lại trải nghiệm liền mạch cho người dùng.

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

### **4. Thanh toán**
- Tích hợp cổng thanh toán **VNPay**, hỗ trợ thanh toán trực tuyến dễ dàng và an toàn.

### **5. Quản lý đơn hàng**
- Người dùng xem trạng thái đơn hàng hiện tại và lịch sử đặt hàng.
- Shipped cập nhật trạng thái giao hàng, hỗ trợ thông báo cho người dùng.

### **6. Tối ưu hiệu năng**
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
- Triển khai lên server thực tế để ứng dụng có thể được sử dụng trong môi trường production.
- Tích hợp thêm các cổng thanh toán quốc tế như PayPal, Stripe.
- Cải thiện giao diện người dùng với các framework hiện đại như Bootstrap hoặc TailwindCSS.

## ![Icon](https://img.icons8.com/?size=25&id=9YgKo9PXNHu4&format=png&color=000000) Ảnh chụp dự án