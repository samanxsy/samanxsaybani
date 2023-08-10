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
        // Output Messages

        // GitHub
        const gihubMessage = `I'm Glad you're interesting in my Coding!<br>
        <br>
        GitHub is where I keep all the cool stuff! There you can find lots of Cloud Infrastructure as Code and Python projects!<br>
        <br>
        Make sure to check it out now!<br>
        <a href="https://github.com/samanxsy">https://github.com/samanxsy</a>`;

        // Figma
        const figmaMessage = `It's a pleasure to see you're curious about what I keep in Figma!<br>
        <br>
        There, I publish Cloud Solution Architecture Templates!<br>
        From Disaster Recovery and Hybrid Cloud Deployment, to Data Analytic Solutions and Migration strategies, You can find it there!<br>
        <br>
        See for yourself!<br>
        <a href="https://www.figma.com/@samanxsaybani">https://www.figma.com/@samanxsaybani</a>`;

        // Medium
        const mediumMessage = `It always feels good to see people are interested in my medium articles!<br>
        <br>
        In Medium, I document my processes. I write about the Cloud, Linux, and my Favourite tools!<br>
        <br>
        If you don't get bored of reading, it worths a check!<br>
        <a href="https://medium.com/@samanxsaybani">https://medium.com/@samanxsaybani</a>`;

        // Buttons
        switch (buttonText) {
            case "github":
                return gihubMessage;
    
            case "figma":
                return figmaMessage;
    
            case "medium":
                return mediumMessage;
    
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
