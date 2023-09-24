/* J a v a S c r i p t */

document.addEventListener("DOMContentLoaded", function () {
    // Assigning HTML Elements
    const outputButtons = document.querySelectorAll(".buttons");
    const outputContent = document.querySelector(".output");

    // Assigning Button Values
    outputButtons.forEach(function (button) {
        button.addEventListener("click", function () {
            const buttonText = button.textContent.toLowerCase();
            const content = getContentForButton(buttonText);
            updateOutput(content);
        });
    });

    // Responding with a Message for each Button Value (ButtonText)
    function getContentForButton(buttonText) {
        // Output Messages
        // GitHub
        const gihubMessage = `I'm Glad you're interesting in my Coding!<br>
        <br>
        GitHub is where I keep all the cool stuff! There you can find lots of Cloud Infrastructure as Code and Python projects!<br>
        <br>
        Make sure to check it out now!<br>
        <br>
        - <a href="https://github.com/samanxsy">GitHub.com</a>`;

        // Figma
        const figmaMessage = `It's a pleasure to see you're curious about what I keep there!<br>
        <br>
        In Figma, I share cloud solutions and architecture diagrams as templates.<br>
        <br>
        From Disaster Recovery and hybrid cloud deployment to Data lake and Serverless solutions, You can find something there!<br>
        <br>
        See for yourself!<br>
        <br>
        - <a href="https://www.figma.com/@samanxsaybani">Figma.com</a>`;

        // Medium
        const mediumMessage = `It always feels good to see people are interested in my medium profile!<br>
        <br>
        Medium is where I document my processes. I write about Cloud, Linux, and my Favourite tools and share my learning experience!<br>
        <br>
        If you don't get bored of reading, you may find it interesting<br>
        <br>
        - <a href="https://samanxsaybani.medium.com/">medium.com</a>`;

        // Linkedin
        const linkedinMessage = `I love my LinkedIn connections, Tap the link and let's connect!<br>
        <br>
        Also, If you feel like sharing some cool thoughts, then feel free to hit my Email inbox!<br>
        <br>
        <br>
        - <a href="https://www.linkedin.com/in/samanxsaybani/">LinkedIn</a><br>
        <br>
        - <a href="mailto:samanxsaybani@gmail.com">samanxsaybani@gmail.com</a>`

        // Email
        const certificatesMessage = `I dedicate so much time to learning! as a result, I've earned some cool certificates such as:<br>
        <br>
        + HashiCorp Certified Cloud Engineer<br>
        + AWS Cloud Solution Architect<br>
        + Microsoft Azure Developer Associate AZ-204<br>
        + IBM DevOps and Software Engineering,<br>
        , and a few more!<br>
        <br>
        Check my Credly and Coursera profile to see more!
        <br>
        - <a href="https://www.credly.com/users/samanxsaybani/badges" class="output">Credly</a>
        - <a href="https://www.coursera.org/user/0eee59cd66601ef732dcdca7069dfecc" class="output">Coursera</a>`

        // CLI prompt element
        const cliPromt = document.getElementById("cli")

        // Buttons
        switch (buttonText) {
            case "github":
                cliPromt.textContent = "userx@saman:~$ github"
                return gihubMessage;
    
            case "figma":
                cliPromt.textContent = "userx@saman:~$ figma"
                return figmaMessage;
    
            case "medium":
                cliPromt.textContent = "userx@saman:~$ medium"
                return mediumMessage;
    
            case "linkedin":
                cliPromt.textContent = "userx@saman:~$ linkedin"
                return linkedinMessage;
    
            case "certificates":
                cliPromt.textContent = "userx@saman:~$ certificates"
                return certificatesMessage;

            default:
                return "Click on something to learn more!";
        }
    }

    function updateOutput(content) {
        outputContent.innerHTML = `<p class="output-content"> ${content}</p>`;
    }
});
