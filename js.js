 let video = document.querySelector('#okno');
let src = document.querySelector('video > source'),
btn = document.querySelector('#btn'),
btnNext = document.querySelector('#btnNext');
bool = true,
i = 0;
// document.addEventListener('DOMContentLoaded', ()=>
// {
   
//     video.play();
// })
// btn.addEventListener("click",()=>{

// if(bool){
//         video.play();
//         bool = false;
//         btn.innerHTML = ' 1 ';
// }else{
//         video.pause();
//         bool = true;
//         btn.innerHTML = ' 0 ';
// }
  
// });

let arrayVideo = [];
arrayVideo.push('./scr/proba.mp4');
arrayVideo.push('./scr/proba2.mp4');
arrayVideo.push('./scr/proba3.mp4');

console.log(arrayVideo); 

function creatVideo(src){
    let box = document.createElement('video');
    box.setAttribute('src', src);
    box.setAttribute('id', 'okno');
    box.setAttribute('controls', 'controls');
    box.setAttribute('preload', 'auto');
    box.setAttribute('muted', 'muted');
    box.setAttribute('autoplay', 'auto');
    document.querySelector('#Vid').append(box);
    // box.play();
}
function proсess(){
    creatVideo(arrayVideo[i]);
    deleteVideo();
    
}
proсess();

if(i > ((arrayVideo.length) - 1)){
    i = 0;
    proсess()
}
function deleteVideo(){
   let video = document.querySelector('#okno');
        video.addEventListener("ended", function (){
        video.remove();
        
        if(i >= ((arrayVideo.length) - 1)) {i = 0; proсess() ; console.log(i)}
        else{
            ++i;
            proсess();
        } 
          
            
            
        
        
}) 
}

