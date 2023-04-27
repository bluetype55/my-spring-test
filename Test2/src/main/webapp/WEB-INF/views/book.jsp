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
		<!-- å ����� ���⿡ �������� �߰��մϴ�. -->
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
        // ������ �ε尡 �Ϸ�Ǹ� �ϸ���Ʈ�� ����մϴ�.
        getAllBooks();
    };
</script>
</body>
</html>