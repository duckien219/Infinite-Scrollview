# Infinite Scrollview

Là một dạng vòng lặp vô hạn khi ta kéo Scrollview tới trang cuối cùng thì nó sẽ tự hiển thị về trang đầu tiên mà không cần kéo ngược lại.

![](/assets/Untitled-1.png)

Các bước thực hiện:

### Bước 1:

Thêm vào màn hình một Scrollview

![](/assets/1.png)

### Bước 2:

Thêm các ảnh cần cuộn vào UIScrollview

![](/assets/2.png)

Ta có 5 cái ảnh nhưng mảng sẽ có 7 phần tử, phần tử cuối cùng chính là chiếc ảnh thứ nhất, phần tử thứ nhất chính là chiếc ảnh cuối cùng. Mục đích của việc sắp xếp ảnh này là để khắc phục hiện tượng giật khi kéo từ chiếc ảnh cuối cùng về ảnh đầu tiên và ngược lại.

### Bước 3:

Tạo hiệu ứng Infinite Scrollview bằng cách thêm các điều kiện logic vào hàm scrollViewDidScroll \(Hàm này được implement thông qua UIScrollViewDelegate\)

![](/assets/3.png)

Khi vuốt sang trái tới hết chiếc ảnh thứ 6:

![](/assets/SwipeToLeft.png)

Khi vuốt sang phải:

![](/assets/SwipetoRight.png)

### Bước 4:

Thêm âm thanh khi thao tác cuộn trên Scrollview

* Khởi tạo biến âm thanh:

![](/assets/4.png)

![](/assets/5.png)

* Hiệu ứng âm thanh sẽ phát lên khi bắt đầu 1 thao tác kéo trên Scrollview bằng các implement hàm scrollViewWillBeginDragging

![](/assets/6.png)

