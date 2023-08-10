/* J a v a S c r i p t */

document.addEventListener("DOMContentLoaded", function () {
    const outputButtons = document.querySelectorAll(".item");
    const outputContent = document.querySelector(".output");

    outputButtons.forEach(function (button) {
        button.addEventListener("click", function () {
            const buttonText = button.textContent.toLowerCase();
            const content = getContentForButton(buttonText);
            updateOutput(content);
        });
    });

    function getContentForButton(buttonText) {
        // Here you can define the content for each button
        // For simplicity, I'll provide basic examples
        switch (buttonText) {
            case "github":
                return "GitHub: Here's my GitHub profile with all my projects.";
            case "figma":
                return "Figma: Explore my design work on Figma.";
            case "medium":
                return "Medium: Read my articles about various topics.";
            case "linkedin":
                return "LinkedIn: Connect with me on LinkedIn to stay updated.";
            case "email":
                return "Email: Feel free to reach out to me at your@email.com.";
            default:
                return "Select an option to learn more.";
        }
    }

    function updateOutput(content) {
        outputContent.innerHTML = `<p class="output-content"> ${content}</p>`;
    }
});
