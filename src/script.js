
const in_log = document.querySelector('.email');
const in_pin = document.querySelector('.password');
const loginbtn = document.getElementById('login-btn');
const loginform = document.querySelector('.log-form');
const overlay = document.querySelector('.overlay');
const overlay1 = document.querySelector('.overlay1');
// const acc_icon = document.querySelector('.fa-user');
const closeModal = document.querySelector('.close-modal')
const closeModal1 = document.querySelector('.close-modal1')
const signUpform = document.querySelector('.sign-up');
const test_btn = document.querySelector('.test-button');
const signUP_btn = document.querySelector('.sign-up-btn');
const up_login = document.getElementById('email');
const up_pin = document.getElementById('password');
const firstName = document.getElementById('name');
const secondName = document.getElementById('surname');
const sign_in_redirect = document.getElementById('sign-in')
const sign_up_redirect = document.getElementById('sign-up')
const copper = document.getElementById('copper');
const silver = document.getElementById('silver');
const gold = document.getElementById('gold');
const welcome = document.querySelector('.welcome');
const course = document.querySelector('.course');
const lessons = document.querySelector('.lessons');
const balance = document.querySelector('.balance_');


let mark = 19;


copper.addEventListener('click', () => {

    fetch('http://localhost:5501/abonement')
    .then((response) => {
        return response.json();
    })  
    .then((data) => {
        console.log(data);
        lessons.innerHTML= `Уроків Залишилося: ${data[0].lessons}`;
        balance.value = Number(balance.textContent);
        balance.textContent = balance.value - data[0].price * Number(data[0].lessons);        
    })
})

silver.addEventListener('click', () => {

    fetch('http://localhost:5501/abonement')
    .then((response) => {
        return response.json();
    })  
    .then((data) => {
        console.log(data);
        lessons.innerHTML= `Уроків Залишилося: ${data[1].lessons}`;
        balance.value = Number(balance.textContent);
        balance.textContent = balance.value - data[1].price * Number(data[1].lessons);        
    })
})


gold.addEventListener('click', () => {

    fetch('http://localhost:5501/abonement')
    .then((response) => {
        return response.json();
    })  
    .then((data) => {
        console.log(data);
        lessons.innerHTML= `Уроків Залишилося: ${data[2].lessons}`;
        balance.value = Number(balance.textContent);
        balance.textContent = balance.value - data[2].price * Number(data[2].lessons);        
    })
})





// Close/open sign in form
const openLoginForm = function(){
    overlay.classList.remove('hidden');
    loginform.classList.remove('hidden');
    
}
const closeLoginForm = function(){
    loginform.classList.add('hidden');
    overlay.classList.add('hidden');
}
// acc_icon.addEventListener('click',openLoginForm);
closeModal.addEventListener('click',closeLoginForm);
overlay.addEventListener('click',closeLoginForm)

document.addEventListener('keydown', function(e){
    if(e.key === 'Escape' && !loginform.classList.contains('hidden')){
        closeLoginForm()
    }
});

//////////////////////////////////////////////////

// Close/Open sign up form 
const openSignUPForm = function(){
    signUpform.classList.remove('ghost');
    overlay1.classList.remove('ghost');
}

const closeSignUPForm = function(){
    signUpform.classList.add('ghost');
    overlay1.classList.add('ghost');
}

closeModal1.addEventListener('click',closeSignUPForm);
document.addEventListener('keydown', function(e){
    if(e.key === 'Escape' && !signUpform.classList.contains('ghost')){
        closeSignUPForm()
    }
});

sign_in_redirect.addEventListener('click', () =>{
    closeSignUPForm();
    openLoginForm();
})

sign_up_redirect.addEventListener('click', () => {
    closeLoginForm();
    openSignUPForm();
})
// test_btn.addEventListener('click',openSignUPForm)









let currentUser 

loginbtn.addEventListener('click', () =>  {
    fetch('http://localhost:5501/login',{
        method : 'POST',
        headers: {
            'Content-Type': 'application/json'},
            body: JSON.stringify({
                login: in_log.value,
                pin: in_pin.value
            })
        })
        .then(res => res.json())
        .then(data => {currentUser = data
        closeLoginForm() 
        updateUI();
        })
        .catch(err => console.error(err));
        
        
    });

    

    
const courseChoise = function (mark) {
    if (mark <= 10){
        const html = `
        <div class="course- ${courseType}-user">
        <img class="card-flag-en" src="/images/ebglish.png" />
        <h2 class="card-title">${kindOfCourse}</h2>
        <ul class="card-list">
        <h2>На Курсі:</h2>
        <li class="list-text">${course.item_1}</li>
        <li class="list-text">${course.item_2}</li>
        <li class="list-text">${course.item_3}</li>
        <li class="list-text">${course.item_4}</li>
        </ul>
        <div class="${price}">
             <button class="card-button-en" type="submit">Продовжити</button>
           </div>
         </div>`;
         
         course.innerHTML = html;
         
        }
        
    }
    
    const updateUI = function() {
        welcome.innerHTML = `Welcome,${currentUser.name_}`;
        courseChoise(myStorage.getItem(mark));
    }
    


    signUP_btn.addEventListener('click', (e) =>  {
        e.preventDefault();
        fetch('http://localhost:5501/signup',{
            method : 'POST',
            headers: {
                'Content-Type': 'application/json'},
            body: JSON.stringify({

                name_: firstName.value,
                surname: secondName.value,
                email: up_login.value,
                password_: up_pin.value
            })
        })
        .then(res => res.json())
        .then(data => {console.log(data)
        closeSignUPForm();
        })
        .catch(err => console.error(err));
        
        
    });
    
   