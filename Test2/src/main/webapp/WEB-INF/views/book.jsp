<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Book List</title>
</head>
<body>
	<h1>Book List</h1>
	<ul id="book-list">
		<!-- 책 목록을 여기에 동적으로 추가합니다. -->
	</ul>

	<script>
    function getAllBooks() {
        fetch('/project/books/')
            .then(response => response.json())
            .then(data => {
                const bookList = document.getElementById("book-list");
                for (let i = 0; i < data.length; i++) {
                    const book = data[i];
                    const listItem = document.createElement('li');
                    listItem.innerHTML = '<h2>' + book.title + '</h2>' +
                                         '<p>Author: ' + book.author + '</p>' +
                                         '<p>Publisher: ' + book.publisher + '</p>' +
                                         '<p>Publication Date: ' + book.publicationDate + '</p>' +
                                         '<p>Price: ' + book.price + '</p>';
                    bookList.appendChild(listItem);
                }
            })
            .catch(error => {
                console.error('Error:', error);
            });
    }

    window.onload = function() {
        // 페이지 로드가 완료되면 북리스트를 출력합니다.
        getAllBooks();
    };
</script>
</body>
</html>