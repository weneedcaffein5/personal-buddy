const postLikeBtn = document.querySelector(".post-like-btn-off")
    const inputComment = document.querySelector(".input-comment")
    const insertCommentBtn = document.querySelector(".insert-comment-btn")
    const memberCommentLikeBtn = document.querySelectorAll(".member-comment-like-btn")
    const memberCommentModify = document.querySelectorAll(".member-comment-modify")

    memberCommentModify.forEach(btn => {
        btn.addEventListener("click", () => {
            let comment = btn.closest(".post-comment").querySelector(".member-comment");
            let text = comment.textContent;
            let textarea = document.createElement("textarea")
            let hideBox = btn.closest(".post-comment").querySelectorAll(".hide")
            console.log(hideBox);
            hideBox.forEach(btn => {
                btn.classList.remove("hide")
            })
            
            textarea.value = text;
            textarea.maxLength = "500";
            textarea.classList.add("modify-input");
            comment.replaceWith(textarea);
            textarea.focus();

            textarea.addEventListener("blur", () => {
                backSpan(text, textarea, hideBox);
            })
        })
    })

    function backSpan(text, textarea, hideBox) {
        let newSpan = document.createElement("span");
        newSpan.classList.add("member-comment");
        newSpan.textContent = text;
        hideBox.forEach(btn => {
            btn.classList.add("hide")
        })
        textarea.replaceWith(newSpan);
    }

    postLikeBtn.addEventListener("click", () => {
        postLikeBtn.classList.toggle("post-like-btn-on")
        postLikeBtn.textContent = postLikeBtn.classList.contains("post-like-btn-on") ? "♥ 99" : "좋아요";
    })

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