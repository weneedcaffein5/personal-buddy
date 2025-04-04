document.addEventListener("DOMContentLoaded", function () {
    const textarea = document.querySelector(".input-comment");
    const textCount = document.querySelector(".comment-text-count");

    textarea.addEventListener("input", function () {
        textCount.textContent = textarea.value.length;
    });
	
	const inputComment = document.querySelector(".input-comment")
	const insertCommentBtn = document.querySelector(".insert-comment-btn")
	const memberCommentLikeBtn = document.querySelectorAll(".member-comment-like-btn")
	const memberCommentModify = document.querySelectorAll(".member-comment-modify")
	
	memberCommentModify.forEach(btn => {
	    btn.addEventListener("click", () => {
	        const postComment = btn.closest(".post-comment");
	        const comment = postComment.querySelector(".member-comment");
	        const text = comment.textContent;
	        const textarea = document.createElement("textarea");
	        const hideBox = postComment.querySelectorAll(".hide");
	        const textCount2 = postComment.querySelector(".text-count2");

	        hideBox.forEach(el => el.classList.remove("hide"));

	        textarea.value = text;
	        textarea.maxLength = "500";
	        textarea.classList.add("modify-input");
	        comment.replaceWith(textarea);
	        textarea.focus();

	        if (textCount2) {
	            textCount2.textContent = textarea.value.length;
	        }

	        textarea.addEventListener("input", function () {
	            if (textCount2) {
	                textCount2.textContent = textarea.value.length;
	            }
	        });

	        textarea.addEventListener("blur", () => {
	            backSpan(text, textarea, hideBox);
	        });
	    });
	});

	
	function backSpan(text, textarea, hideBox) {
	    let newSpan = document.createElement("span");
	    newSpan.classList.add("member-comment");
	    newSpan.textContent = text;
	    hideBox.forEach(btn => {
	        btn.classList.add("hide")
	    })
	    textarea.replaceWith(newSpan);
	}
	
	inputComment.addEventListener("input", () => {
	    if (inputComment.value.trim().length > 0) {
	        insertCommentBtn.classList.add("insert-comment-btn-on")
	    } else {
	        insertCommentBtn.classList.remove("insert-comment-btn-on")
	    }
	})
	
	memberCommentLikeBtn.forEach(btn => {
	    btn.addEventListener("click", () => {
	        btn.classList.toggle("member-comment-like-btn-on");
	    });
	});
});





