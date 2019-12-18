/*
Khoảng của SMALLINT trong PostgreSQL?

(Chọn đáp án thích hợp nhất.) (-32768 to 32767)
*/
/*
Tổng quan về các kiểu dữ liệu PostgreSQL
PostgreSQL hỗ trợ các kiểu dữ liệu sau:

Kiểu Boolean
Kiểu Character như char, varchar, và text.
Kiểu Numeric như integer và floating-point number.
Kiểu Temporal types như date, time, timestamp, và interval
Kiểu UUID cho việc lưu trữ Universally Unique Identifiers
Kiểu Array cho việc lưu trữ array strings, numbers, v.v.
Kiểu JSON lưu trữ dữ liệu JSON
hstore lưu trữ key-value pair
Các kiểu đặc biệt như địa chỉ mạng và dữ liệu hình học.

Boolean
Một kiểu dữ liệu Boolean có thể có một trong 3 trạng thái: true, false hoặc null.
Bạn sử dụng từ khoá boolean hoặc bool để khai báo một cột với kiểu dữ liệu Boolean.

Khi bạn chèn dữ liệu vào cột Boolean, PostgreSQL chuyển đổi nó thành giá trị Boolean, ví dụ, 1, yes, y, t, true được chuyển đổi thành true, và 0, no, n false, f được chuyển đổi thành false.

Khi bạn chọn dữ liệu từ một cột Boolean, PostgreSQL chuyển đổi lại giá trị, ví dụ, t thành true, f thành false và khoảng cách thành null.

Character
PostgreSQL cung cấp 3 kiểu dữ liệu ký tự: CHAR(n), VARCHAR(n) và TEXT

CHAR(n) là ký tự có độ dài cố định với phần đệm không gian.
Nếu bạn chèn một chuỗi ngắn hơn chiều dài của cột, PostgreSQL sẽ tạo khoảng trống.
Nếu bạn chèn một chuỗi dài hơn độ dài của cột, PostgreQuery sẽ báo lỗi.
VARCHAR(n) là chuỗi ký tự có độ dài thay đổi.
Với VARCHAR (n), bạn có thể lưu trữ tối đa n ký tự.
PostgreSQL không đệm khoảng trắng khi chuỗi được lưu trữ ngắn hơn chiều dài của cột.
TEXT là chuỗi ký tự có độ dài thay đổi.
Về mặt lý thuyết, dữ liệu văn bản là một chuỗi ký tự có độ dài không giới hạn.

Numeric
PostgreSQL cung cấp 2 kiểu dữ liệu số:

số nguyên (integers)
số thực dấu phẩy động (floating-point numbers)

Số nguyên
Có 3 kiểu số nguyên trong PostgreSQL:

Small integer (SMALLINT) là số nguyên có chữ ký 2 byte có phạm vi từ -32,768 đến 32,767.
Integer (INT) là số nguyên 4 byte có phạm vi từ -2,147,483,648 đến 2,147,483,647.
SERIAL giống như số nguyên ngoại trừ PostgreSQL sẽ tự động tạo và điền các giá trị vào cột SERIAL.
Điều này tương tự với cột AUTO_INCREMENT trong cột MySQL hoặc AUTO INCREMENT trong SQLite.

Số thực dấu phẩy động
Có 3 kiểu số thực dấu phẩy động chính, đó là:

float(n)  là một số dấu phẩy động có độ chính xác, ít nhất là n, tối đa là 8 byte.
real hoặc float8 là số dấu phẩy động 4 byte.
numeric or numeric(p,s) là một số thực có p chữ số với số s sau dấu thập phân.
Số numeric(p, s) là số chính xác.

Kiểu dữ liệu tạm thời
Kiểu dữ liệu tạm thời cho phép bạn lưu trữ ngày tháng và/hoặc thời gian. PostgreSQL có 5 kiểu dữ liệu tạm thời chính:

DATE chỉ lưu trữ ngày tháng.
TIME lưu trữ các giá trị thời gian của ngày.
TIMESTAMP lưu trữ cả ngày tháng và thời gian.
TIMESTAMPTZ là kiểu dữ liệu dấu thời gian nhận biết múi giờ. Nó là viết tắt của dấu thời gian với múi giờ.
INTERVAL lưu trữ khoảng thời gian.
TIMESTAMPTZ là phần mở rộng PostgreSQL trên các kiểu dữ liệu tạm thời theo tiêu chuẩn SQL.

Mảng
In PostgreSQL, bạn có thể lưu trữ một mảng gồm các xâu ký tự, một mảng số nguyên, v.v. trong cột mảng.
Mảng này có ích trong một số tình huống, ví dụ: lưu trữ các ngày trong tuần, các tháng trong năm.

JSON
PostgreSQL cung cấp hai loại dữ liệu JSON: JSON và JSONB để lưu trữ dữ liệu JSON.

Kiểu dữ liệu JSON lưu trữ dữ liệu JSON đơn giản mà yêu cầu xử lý lại cho mỗi quá trình xử lý, trong khi kiểu dữ liệu JSONB lưu trữ dữ liệu JSON ở định dạng nhị phân nhanh hơn để xử lý nhưng chậm hơn để chèn.
Ngoài ra, JSONB hỗ trợ lập chỉ mục, đây có thể là một lợi thế.

UUID
Kiểu dữ liệu UUID cho phép bạn lưu trữ Universal Unique Identifiers được xác định bởi RFC 4122.
Các giá trị UUID đảm bảo tính duy nhất tốt hơn SERIAL và có thể được sử dụng để ẩn dữ liệu nhạy cảm được hiển thị công khai, chẳng hạn như các giá trị của id trong URL.

Các kiểu dữ liệu đặc biệt
Bên cạnh các kiểu dữ liệu nguyên thủy, PostgreSQL cũng cung cấp một số loại dữ liệu đặc biệt liên quan đến hình học và mạng.

box– một hình hộp chữ nhật.
line – một bộ các điểm.
point– một cặp số hình học.
lseg– một đoạn đường thẳng.
polygon– một hình học khép kín.
inet– một địa chỉ IP4.
macaddr– một địa chỉ MAC.
*/