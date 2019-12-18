--Show all the information of the syllabus of course 
SELECT * FROM syllabus;

/*
SQL là ngôn ngữ dùng để giao tiếp với hệ quản trị cơ sỡ dữ liệu quan hệ.

Cơ sở dữ liệu là gì?
Cơ sở dữ liệu là tập hợp các dữ liệu có tổ chức.
Ví dụ, một cơ sở dữ liệu của một trường đại học có thể là tập hợp các dữ liệu như: Hồ sơ các nhân của sinh viên, lịch sử hiệu suất của sinh viên, dữ liệu giáo viên, dữ liệu của bộ phận tài chính, v.v.

Cơ sở dữ liệu quan hệ
Trong cơ sở dữ liệu quan hệ, dữ liệu được tổ chức dưới dạng bảng.
Một bảng chứa các hàng và cột dữ liệu.
Bảng có một khóa (key) duy nhất để xác định từng hàng của bảng.

SQL được sử dụng để tương tác với các cơ sở dữ liệu quan hệ.
Ta thường xem cơ sở dữ liệu quan hệ là cơ sở dữ liệu SQL.

SQL là gì?
SQL là viết tắt của Structured Query Language, là một ngôn ngữ chuẩn hóa để tương tác với RDBMS (Relational Database Management System - Hệ quản trị cơ sỡ dữ liệu quan hệ).
Một số ví dụ về cơ sở dữ liệu quan hệ: MySQL, Oracle, mariaDB, postgreSQL, v.v.
SQL được sử dụng để thực hiện các hoạt động C.R.U.D (Tạo, truy xuất, cập nhật và xóa) trên cơ sở dữ liệu quan hệ.
SQL cũng có thể thực hiện các tác vụ quản trị trên cơ sở dữ liệu như bảo mật cơ sở dữ liệu, sao lưu, quản lý người dùng, v.v.
Ta có thể tạo cơ sở dữ liệu và bảng bên trong cơ sở dữ liệu bằng SQL.

Các kiểu SQL
Trong phần trên, chúng ta đã học được những thao tác có thể thực hiện với cơ sở dữ liệu sử dụng SQL.
SQL về cơ bản là sự kết hợp của bốn ngôn ngữ khác nhau, chúng là:

DQL (Data Query Language): DQL được sử dụng để lấy thông tin từ cơ sở dữ liệu đã được lưu trữ ở đó.
DDL (Data Definition Language): DDL được sử dụng để xác định lược đồ bảng.
DCL (Data Control Language): DCL được sử dụng cho người dùng và quản lý cấp phép. Nó kiểm soát truy cập vào cơ sở dữ liệu.
DML (Data Manipulation Language): DML được sử dụng để chèn, cập nhật và xóa dữ liệu khỏi cơ sở dữ liệu.

Điều gì khiến PostgreSQL nổi bật?
PostgreSQL là hệ thống quản lý cơ sở dữ liệu đầu tiên thực hiện tính năng kiểm soát đồng thời nhiều phiên bản (MVCC), ngay cả trước Oracle.
Tính năng MVCC được gọi là cách ly ảnh chụp nhanh trong Oracle. 

PostgreSQL được thiết kế để có thể mở rộng.
Trong PostgreSQL, bạn có thể xác định loại dữ liệu, loại chỉ mục, ngôn ngữ chức năng, v.v.
Nếu bạn không thích bất kỳ phần nào của hệ thống, bạn luôn có thể phát triển một plugin tùy chỉnh và cải thiện nó để đáp ứng yêu cầu của bạn, ví dụ: thêm một tối ưu hóa mới.
*/
