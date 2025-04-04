document.addEventListener("DOMContentLoaded", function () {
    const inputComment = document.querySelector(".input-comment");
    const textCount = document.querySelector(".comment-text-count");
    const insertCommentBtn = document.querySelector(".insert-comment-btn");
    const memberCommentModify = document.querySelectorAll(".member-comment-modify");

    inputComment.addEventListener("input", function () {
        textCount.textContent = inputComment.value.length;
    });

    inputComment.addEventListener("input", () => {
        if (inputComment.value.trim().length > 0) {
            insertCommentBtn.classList.add("insert-comment-btn-on");
        } else {
            insertCommentBtn.classList.remove("insert-comment-btn-on");
        }
    });

    let currentEditing = null;

    memberCommentModify.forEach(btn => {
        btn.addEventListener("click", () => {
            const postComment = btn.closest(".post-comment");
            const comment = postComment.querySelector(".member-comment");
            const text = comment.textContent;
            const textarea = document.createElement("textarea");
            const hideBox = postComment.querySelectorAll(".hide");
            const textCount2 = postComment.querySelector(".text-count2");

            if (currentEditing) {
                const { originalText, textareaEl, hideEls } = currentEditing;
                backSpan(originalText, textareaEl, hideEls);
            }

            textarea.value = text;
            textarea.maxLength = "500";
            textarea.classList.add("modify-input");
            comment.replaceWith(textarea);
            textarea.focus();

            hideBox.forEach(el => el.classList.remove("hide"));

            if (textCount2) {
                textCount2.textContent = textarea.value.length;
            }

            textarea.addEventListener("input", function () {
                if (textCount2) {
                    textCount2.textContent = textarea.value.length;
                }
            });

            currentEditing = {
                originalText: text,
                textareaEl: textarea,
                hideEls: hideBox
            };
        });
    });

    document.addEventListener("click", function (e) {
        if (!currentEditing) return;

        const { textareaEl, originalText, hideEls } = currentEditing;

        const isInsideTextarea = textareaEl.contains(e.target);
        const isModifyBtn = e.target.classList.contains("member-comment-modify");
        const isAddBtn = e.target.classList.contains("modify-add-btn");

        if (!isInsideTextarea && !isModifyBtn && !isAddBtn) {
            backSpan(originalText, textareaEl, hideEls);
            currentEditing = null;
        }
    });

    function backSpan(text, textarea, hideBox) {
        const newSpan = document.createElement("span");
        newSpan.classList.add("member-comment");
        newSpan.textContent = text;
        hideBox.forEach(el => el.classList.add("hide"));
        textarea.replaceWith(newSpan);
    }
	
	const modifyAddBtns = document.querySelectorAll(".modify-add-btn");

    modifyAddBtns.forEach(btn => {
        btn.addEventListener("click", () => {
            const postComment = btn.closest(".post-comment");
            const textarea = postComment.querySelector(".modify-input");
            const hiddenInput = postComment.querySelector("input[name='textVal']");
            const updateForm = btn.closest("form");

            if (textarea && hiddenInput && updateForm) {
                const updatedText = textarea.value.trim();
                hiddenInput.value = updatedText;
                updateForm.submit();
            }
        });
    });
});
