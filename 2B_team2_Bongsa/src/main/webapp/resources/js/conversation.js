const chat = {

    1: {
        text: '안녕하세요 서움입니다. 무엇을 도와드릴까요',
        options: [
            {
                text: "서움 소개",
                next: 2
            },
            {
                text: "서움 공지사항",
                next: 3
            },
            {
                text: "서움 봉사정보",
                next: 4
            },
            {
                text: "서움 봉사신청",
                next: 5
            }
        ]
    },
    2: {
        text: '서로도움 홈페이지 소개 페이지로 이동합니다',
        options: [
            {
                text: "서로도움 소개",
                url: "http://localhost:8081/biz4/About.jsp"

            }
        ]
    },
    3: {
        text: '서로도움 홈페이지 공지사항 페이지로 이동합니다',
        options: [
            {
                text: "서로도움 공지사항",
                url: "http://localhost:8081/biz4/notice.jsp"
            }
        ]
    },
    4: {
        text: '서로도움 홈페이지 봉사정보 페이지로 이동합니다',
        options: [
            {
                text: "서로도움 봉사정보",
                url: "http://localhost:8081/biz4/vol_list.do"
            }
        ]
    },
    5: {
        text: '서로도움 홈페이지 봉사신청 페이지로 이동합니다',
        options: [
            {
                text: "서로도움 봉사신청",
                url: "http://localhost:8081/biz4/pg_apply.do"
            }
        ]
    }
};


const bot = function () {

    const peekobot = document.getElementById('peekobot');
    const container = document.getElementById('peekobot-container');
    const inner = document.getElementById('peekobot-inner');

    const sleep = function (ms) {
        return new Promise(resolve => setTimeout(resolve, ms));
    };

    const scrollContainer = function () {
        inner.scrollTop = inner.scrollHeight;
    };

    const insertNewChatItem = function (elem) {
        //container.insertBefore(elem, peekobot);
        peekobot.appendChild(elem);
        scrollContainer();
        //debugger;
        elem.classList.add('activated');
    };

    const printResponse = async function (step) {
        const response = document.createElement('div');
        response.classList.add('chat-response');
        response.innerHTML = step.text;
        insertNewChatItem(response);

        await sleep(1500);

        if (step.options) {
            const choices = document.createElement('div');
            choices.classList.add('choices');
            step.options.forEach(function (option) {
                const button = document.createElement(option.url ? 'a' : 'button');
                button.classList.add('choice');
                button.innerHTML = option.text;
                if (option.url) {
                    button.href = option.url;
                } else {
                    button.dataset.next = option.next;
                }
                choices.appendChild(button);
            });
            insertNewChatItem(choices);
        } else if (step.next) {
            printResponse(chat[step.next]);
        }
    };

    const printChoice = function (choice) {
        const choiceElem = document.createElement('div');
        choiceElem.classList.add('chat-ask');
        choiceElem.innerHTML = choice.innerHTML;
        insertNewChatItem(choiceElem);
    };

    const disableAllChoices = function () {
        const choices = document.querySelectorAll('.choice');
        choices.forEach(function (choice) {
            choice.disabled = 'disabled';
        });
        return;
    };

    const handleChoice = async function (e) {

        if (!e.target.classList.contains('choice') || 'A' === e.target.tagName) {
            // Target isn't a button, but could be a child of a button.
            var button = e.target.closest('#peekobot-container .choice');

            if (button !== null) {
                button.click();
            }

            return;
        }

        e.preventDefault();
        const choice = e.target;

        disableAllChoices();

        printChoice(choice);
        scrollContainer();

        await sleep(1500);

        if (choice.dataset.next) {
            printResponse(chat[choice.dataset.next]);
        }
        // Need to disable buttons here to prevent multiple choices
    };

    const startConversation = function () {
        printResponse(chat[1]);
    }

    const init = function () {
        container.addEventListener('click', handleChoice);

        startConversation();
    };

    init();
}

bot();