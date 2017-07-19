# Infinite Scrollview

Là một dạng vòng lặp vô hạn khi ta kéo Scrollview tới trang cuối cùng thì nó sẽ tự hiển thị về trang đầu tiên mà không cần kéo ngược lại.

![](/assets/Untitled-1.png)

Các bước thực hiện:



Bước 1:

Thêm vào màn hình một Scrollview

![](/assets/Screen Shot 2017-07-19 at 15.16.44.png)

Bước 2:

Thêm các ảnh cần cuộn vào UIScrollview

![](/assets/Screen Shot 2017-07-19 at 15.14.11.png)

Ta có 5 cái ảnh nhưng mảng sẽ có 6 phần tử, phần tử thứ 6 chính là chiếc ảnh thứ nhất để tránh khắc phục hiện tượng giật khi kéo từ chiếc ảnh cuối cùng về ảnh đầu tiên

Bước 3:

Tạo hiệu ứng Infinite Scrollview bằng cách implement phương thức scrollViewDidScroll

![](/assets/Screen Shot 2017-07-19 at 15.23.38.png)

Bước 4:

Thêm âm thanh khi thao tác cuộn trên Scrollview

* Khởi tạo biến âm thanh:

![](/assets/Screen Shot 2017-07-19 at 15.27.14.png)![](/assets/Screen Shot 2017-07-19 at 15.28.23.png)

* Hiệu ứng âm thanh sẽ phát lên khi bắt đầu 1 thao tác kéo trên Scrollview bằng các implement hàm scrollViewWillBeginDragging![](/assets/Screen Shot 2017-07-19 at 15.30.31.png)



