create database englishtest;
drop database quizEN;
create database Quiz;
use Quiz;
create table quizEN( 
NumID int primary key,
question varchar(250) not null,
a varchar(80) not null,
b varchar(80) not null,
c varchar(80) not null,
d varchar(80) not null,
correct varchar(40) not null
);
drop table quizEN;
insert into quizEN values 
(1,'He ___ a teacher.','am','is','are','were', 'is'),

(2,'We are _____ .','doctors','a receptionist','beautifuls','a good student.', 'is'),

(3,'I had a long working day so I’m _____.','cold','strange','hot','tired', 'tired'),

(4,'Hello! My name is Tom.','– Thank you!','I don`t know',' – Me neither.','– Nice to meet you!', 'is'),

(5,'This is my _____ house.','mine','his','parents’',' grandparents', 'is'),

(6,'I like _____ in my free time.','cycling','cycle','cycled','bicycle', 'is'),

(7,'What do you do?','– I’m fine, thank you.','– Thank you, I don’t.','– I’m a fireman.','– I go shopping every day.', '– I go shopping every day.'),

(8,'Is he a good student?','– Yes, he is.','– Yes, he does.','– No, he aren’t.','– No, he didn’t.', 'is'),

(9,' _____ do you live?','When','What','Where','Who', 'Where'),

(10,'What did you do yesterday?','I go to school.','I don’t have any plans.','I written a letter.','I read a book.', 'is'),

(11,'Let’s meet _____ Monday ______ 6 pm.','on, at','at, in','on, in','-, on', 'is'),

(12,' I’m 12, and my brother is 14, so he’s ____ than me.','younger','older','oldest','the younger', 'is'),

(13,'There’s _____ before Friday and _____ after June.','Tuesday, August','Tuesday, July','Tuesday, May','Thursday, July', 'is'),

(14,'What does he look like?','He likes football.','He’s tall and slim.',' He’s a good driver.','He is clever and punctual.', 'is'),

(15,' What would you like?','I like reading.','I want to use a phone.','I like my family.','I’m a happy person.', 'is'),

(16,'This book _____ in 1665.','is written','written','was written','was wrote', 'is'),

(17,'He’s the man _____ sold this house.','where','why','was','who', 'is'),

(18,' I’m so depressed!','– You should talk to a therapist!','– You mustn’t smoke here!','– You are a diligent student!','– Everything would have been good!', 'is'),

(19,' I _____ never _____ to Paris.','have, been','haven’t, been','was, go','will, be', 'is'),

(20,'They __________ when I came home.','was watching TV','cooked a dinner','were discussing the news','have done their homework', 'is'),

(21,' I _____ before he called me.','wrote an article','had read ten pages','read ten pages','will read this book', 'is'),

(22,'Tomorrow at 3 I ______','will swim in the sea','swim in the sea','will be swimming in the sea','will have swum in the sea', 'is'),

(23,' Do you have any plans for the weekend?','– Yes, I’m going to visit my parents.','– Yes, I will visit my parents.','– Yes, I used to visit my parents.','– Yes, I haven’t decided yet.', 'is'),

(24,'He’s a good driver, _______ ?','wasn’t he','won’t he','he is','isn’t he', 'is'),

(25,'If the weather _____ fine tomorrow, we _____ for a walk.','will be, will','will be, go','is, will go','is, go', 'is'),

(26,' If I _____ you, I _____ call her.','were, would','was, will','am, will','know, don’t', 'is'),

(27,' If he ______ met her, he ______ be married.','didn’t, wouldn’t','hadn’t, wouldn’t','never, will','hasn’t, won’t', 'is'),

(28,' I wish I ______ a better student when I was at university.','was','had been','were','used to be', 'is'),

(29,'He’s very reluctant, he ______','must be very hard-working','seems very diligent','must be tired','should visit a doctor', 'is'),

(30,'You don’t believe me but I ______ love you!','must','boast','boost','do', 'is');

select * from quizEN;
insert into quizEN values (31,'You don’t believe me but I ______ love you!','must','boast','boost','do', 'is');

create table quizPL( 
NumID int primary key,
question varchar(250) not null,
a varchar(100) not null,
b varchar(100) not null,
c varchar(100) not null,
d varchar(100) not null,
correct varchar(40) not null
);
insert into quizPL values 
(1,'Cieszę się ___ , coraz lepiej mówisz po polsku','twoim postępem','twoją klęską','z twoim sukcesem','twoją klęskę', 'twoim postępem'),

(2,' Mój kolega zakochał się w ___ i robi wszystko wbrew ___','naszą sąsiadkę / zdrowemu rozsądku','naszej sąsiadce / zdrowemu rozsądkowi','naszą sąsiadką / zdrowego rozsądku','naszej sąsiadce / zdrowego rozsądku', 'naszej sąsiadce / zdrowemu rozsądkowi'),

(3,'Żałuję ___ , ale to nic nie zmienia, muszę szukać ___','swojego uczynka / nową pracę','swój uczynek / nową pracą','swojemu uczynkowi / nową pracę','swojego uczynku / nowej pracy', 'swojego uczynku / nowej pracy'),

(4,'Idę ___, muszę poprosić szefa o ___','na pracę / podpisu','do pracy / podpis','w pracy / podpis','do pracę / podpisem', 'do pracy / podpis'),

(5,'Widziałem ___, ale nie słyszałem o ___','te dziewczyny / ich rodzicach','tych dziewczyn / ich rodziców','z tymi dziewczynami / ich rodziców','o tych diewczynach / ich rodziców', 'tych dziewczyn / ich rodziców'),

(6,' Kocham ___, dla ___ to najważniejsze.','cię, mnie','ci, mnie','ciebie, mi','ty, mi', 'cię, mnie'),

(7,' Nie ___, zrobiliście wszystko, co w ___ mocy','martw się / twojej','martwcie się / waszej','martwicie się / naszej','martwią się / ich', 'martwcie się / waszej'),

(8,'Gdybym dobrze ___ po polsku,nie ___ przygotowywać się do egzaminu.','mówiłbym / musiałby','mówił / musiałbym','mówiłby / musiała','mówiłaby / musiałoby', 'mówił / musiałbym'),

(9,' Zobacz ___ oni są ___. Zobacz ___ oni są ___.','jacy / szczęśliwi','jakie / szczęśliwe','jakimi / szczęśliwymi','jaki / szczęśliwe', 'jaki / szczęśliwe'),

(10,'Nagle ___ Anna i ___ że wszystko ___','przychodziła / mówiła / się kończyło','przyszła / powiedziała / się skończyło','szła / mówiłaś / się kończy','idę / mówi / się kończą', 'przyszła / powiedziała / się skończyło'),

(11,'Człowiek, ___ słuchać nigdy nie zapomni słów, ___ przez jego bliskich.','umiejące / mówionych','umie / mówionych','umiejąc / opowiadających','umiejący / powiedzianych', 'umiejące / mówionych'),

(12,'Im ___ się uczysz, tym ___ jest twój wynik','bardziej / lepiej','więcej / lepszy','dużo / dobry','bardzo / bardziej dobry', 'dużo / dobry'),

(13,'Helena ma 21 ___, w tym roku ___ uniwersytet','rok / kończę','lat / skończy','lata / kończy','rok / będę kończyć', 'rok / będę kończyć'),

(14,'Na tym spotkaniu było ___ moich kolegów i  ___ dziennikarki','dwa / czterech','dwóch / cztery','dwaj / czworo','dwa / czterej', 'dwa / czterech'),

(15,' Ostatnimi czasy słucham ___ i poszukuję ___','muzyki klasycznej / nowe wyzwania','muzykę klasyczną / nowego wyzwania','muzyką klasyczną / nowe wyzwanie','muzyki klasycznej / nowych wyzwań', 'muzyki klasycznej / nowych wyzwań'),

(16,'Potrafi mi ktoś wyjaśnić dlaczego nasz stażysta ___ ratowników?','siedzi za stołem','siedzi przy stole','siedzi pid stolem','siedzi na stole', 'siedzi przy stole'),

(17,'Kupiłaś mi perłowy krem ___ rąk?','do','od','dla','dlo', 'od'),

(18,'Nauczyciel poprosił was, ___ zrobili to zadanie jak najszybciej','żebyśmy','żeby','żebyście','żebyśma', 'żebyśmy'),

(19,' ___ mężczyźni, ___ wczoraj pomogli nam, są jej kolegami.','ci / który','te / które','ci / którzy','te / --', 'ci / który'),

(20,'Marek i Agata mają  ___ dzieci.','cztery','czworo','czterech','czterej', 'czterech'),

(21,' Ewelina tłumaczyła się nie brakiem czasu, ale brakiem ___ na wakacje.','pieniędzmi','pieniądz','pieniędzy','pieniądzy', 'pieniędzy'),

(22,'Przepraszam, że się spóźniłem, ale niestety  ___ .','zaspałem','przespałem','wyspałem','dospałem', 'zaspałem'),

(23,' Nie jesteś takim niezdarą, ale też nie jesteś grubą ___ .','świnią','krową','rybą','trybą', 'świnią'),

(24,'Jeżeli o mnie chodzi, to się rozumie samo przez ___','siebie','się','sobą','si', 'siebie'),

(25,'Długopis mi się ___.','wypisał','spisał','przepisał','dopisał', 'wypisał'),

(26,'Podczas jazdy nie wolno rozmawiać ___.','przez telefon','po telefonu','na telefonu','v telefonu', 'przez telefon'),

(27,'Nie musisz ___ o wnętrzu na rzecz dzieci podczas dekoracji własnego domu','zapominać','zapamiętywać','zapamiętać','zapomnieć', 'zapamiętywać'),

(28,'Policji udało się ___ szajkę złodziei.','przepracować','rozpracować','odpracować','perepracować', 'rozpracować'),

(29,'Oszuści często starają się ___ zaufanie ludzi','wzbudzić','przyciągnąć','wykorzystać','spowodować', 'wykorzystać'),

(30,'Musisz ___ zaległości na zajęciach','wyrobić','przerobić','nadrobić','dodrobić', 'wyrobić');

use Quiz;
drop table quizPL;


select correct from quizPL;

create table quizUA( 
NumID int primary key,
question varchar(250) not null,
a varchar(200) not null,
b varchar(200) not null,
c varchar(200) not null,
d varchar(200) not null,
correct varchar(50) not null
);

insert into quizUA values
(1,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(2,'Укажи просте речення:','Вечірня зіронька встає, дочка вечерять подає.','Коли ідеш ранковим полем, там грають бризки від роси.','Жити щасливо мусить кожна людина.',' 
Слова — полова, але огонь в одежі слова — безсмертна чудотворна фея.','Жити щасливо мусить кожна людина.'),

(3,'Спонукальним є речення:','Червоне сонце закотилося в імлу й пірнуло за обрій.','Живе полум’я жагуче здійнялося вгору й засичало.','Снігопади припинилися, і над селом розпогодилося.','Нехай добро заглядає у кожен дім і сіє своє золоте добро.','Нехай добро заглядає у кожен дім і сіє своє золоте добро.'),

(4,'Питальними є всі речення, ОКРІМ','Що ж воно таке, отой берег дитинства','Хто серця чистого добро злобою чорною поборе','Слово, чому ти не тверда криця','Сміються, плачуть солов’ї і б’ють піснями в груди ','Сміються, плачуть солов’ї і б’ють піснями в груди '),

(5,'Поширеним є речення','Повіяло холодом.','Петрик гнув кирпу.','Іван хоче навчатися.','Відповів кожен з нас.','Повіяло холодом.'),

(6,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(7,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(8,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(9,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(10,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(11,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(12,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(13,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(14,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(15,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(16,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(17,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(18,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(19,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(20,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(21,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(22,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(23,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(24,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(25,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(26,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(27,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(28,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(29,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні'),

(30,'За наявністю головних членів речення поділяють на:','поширені та непоширені','повні та неповні','односкладні та двоскладні','прості та складні','односкладні та двоскладні');


create table users(id SERIAL PRIMARY KEY,
                   name_ varchar(200),
                   surname varchar(200),
                   email varchar(200),
                   password varchar(200));


insert into users (name_,surname,email,password_)
values( 'Vitaliy','Havrona','vitaliyhavrona@gmail.com','20041406');

CREATE TABLE abonements (
    id serial primary key,
    kind varchar(60),
    lessons varchar(60),
    hour varchar(60),
    price int
);

insert into abonements(kind,lessons,hour,price) values ('Стандарт','4','6',160),
('Стандарт+','8','12',150),
('Преміум','12','18',140);
 is
doctors
tired
– Nice to meet you!
parents’
cycling
– I’m a fireman.
– Yes, he is.
Where
I written a letter.
on, at
older
Thursday, July
He’s tall and slim.
I like reading.
was wrote
who
– Everything would have been good!
have, been
were discussing the news
had read ten pages
will swim in the sea
– Yes, I’m going to visit my parents.
isn’t he
will be, go
was, will
didn’t, wouldn’t
was
must be tired
boast