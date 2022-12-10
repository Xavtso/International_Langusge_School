'use strict'

const quizUA = document.getElementById('ua');
const quizEN = document.getElementById('en');
const quizPL = document.getElementById('pl');
const bodytest = document.querySelector('.quiz');
const choise = document.querySelector('.choise');
const btnNext = document.querySelector('.btn-next');
const radio = document.querySelectorAll('.answer-item');
// const answers = document.querySelectorAll('.answer-font')


let myStorage = window.localStorage;
let answers = []


quizEN.addEventListener('click', async () => {
    choise.classList.add('.ghost');
    
    bodytest.innerHTML = ''
    // bodytest.classList.remove('.ghost')
    
    
    fetch('http://localhost:5501/quizEN')
    .then((response) => {
        return response.json();
    })  
    .then((data) => {
        data.forEach((data,i) => {
            
            const html = `
            <div class="test ">
            <h2 class="question">${data.question}</h2>
            <ul class="answers">
            <li class="answer-font"><input class="answer-item" type="radio" name="q${data.numid}" value="${data.a}">${data.a}</li>
            <li class="answer-font"><input class="answer-item" type="radio" name="q${data.numid}" value="${data.b}">${data.b}</li>
            <li class="answer-font"><input class="answer-item" type="radio" name="q${data.numid}" value="${data.c}">${data.c}</li>
            <li class="answer-font"><input class="answer-item" type="radio" name="q${data.numid}" value="${data.d}">${data.d}</li>
            </ul>
            <span class="indicator">${data.numid}/30</span>
            
            </div>
            </div>
            `;


            bodytest.insertAdjacentHTML('beforeend',html);
        })

        
    })
    
    
    Array.from(radio).forEach(item => {
        item.addEventListener('change',() => {
            answers.push(item.value)
        })
    })
    
    btnNext.addEventListener('click', () => {
        answers.reduce((acc,answ) => acc + answ,0);
    });
})



quizPL.addEventListener('click', async () => {
    choise.classList.add('.ghost');
    
    bodytest.innerHTML = ''
    // bodytest.classList.remove('.ghost')
    
    
    fetch('http://localhost:5501/quizPL')
    .then((response) => {
        return response.json();
    })  
    .then((data) => {
        data.forEach((data,i) => {
            
            const html = `
            <div class="test ">
            <h2 class="question">${data.question}</h2>
            <ul class="answers">
            <li class="answer-font"><input class="answer-item" type="radio" name="q${data.numid}" value="${data.a}">${data.a}</li>
            <li class="answer-font"><input class="answer-item" type="radio" name="q${data.numid}" value="${data.b}">${data.b}</li>
            <li class="answer-font"><input class="answer-item" type="radio" name="q${data.numid}" value="${data.c}">${data.c}</li>
            <li class="answer-font"><input class="answer-item" type="radio" name="q${data.numid}" value="${data.d}">${data.d}</li>
            </ul>
            <span class="indicator">${data.numid}/30</span>
            
            </div>
            </div>
            `;


            bodytest.insertAdjacentHTML('beforeend',html);
        })

        
    })
    
    
    Array.from(radio).forEach(item => {
        item.addEventListener('change',() => {
            answers.push(item.value)
        })
    })
    
    btnNext.addEventListener('click', () => {
        console.log(answers);
        answers.reduce((acc,answ) => acc + mov,0);
    });
})
quizPL.addEventListener('click', async () => {
    choise.classList.add('.ghost');
    
    bodytest.innerHTML = ''
    // bodytest.classList.remove('.ghost')
    
    
    fetch('http://localhost:5501/quizPL')
    .then((response) => {
        return response.json();
    })  
    .then((data) => {
        data.forEach((data,i) => {
            
            const html = `
            <div class="test ">
            <h2 class="question">${data.question}</h2>
            <ul class="answers">
            <li class="answer-font"><input class="answer-item" type="radio" name="q${data.numid}" value="${data.a}">${data.a}</li>
            <li class="answer-font"><input class="answer-item" type="radio" name="q${data.numid}" value="${data.b}">${data.b}</li>
            <li class="answer-font"><input class="answer-item" type="radio" name="q${data.numid}" value="${data.c}">${data.c}</li>
            <li class="answer-font"><input class="answer-item" type="radio" name="q${data.numid}" value="${data.d}">${data.d}</li>
            </ul>
            <span class="indicator">${data.numid}/30</span>
            
            </div>
            </div>
            `;


            bodytest.insertAdjacentHTML('beforeend',html);
        })

        
    })
    
    
    Array.from(radio).forEach(item => {
        item.addEventListener('change',() => {
            answers.push(item.value)
        })
    })
    
    btnNext.addEventListener('click', () => {
        const mark = answers.reduce((acc,answ) => acc + answ,0);
        myStorage.setItem(mark)
    });
})