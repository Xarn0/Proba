 let video = document.querySelector('#okno');
let src = document.querySelector('video > source'),
btn = document.querySelector('#btn'),
btnNext = document.querySelector('#btnNext');
bool = true,
i = 0;

    // toggleFullScreen();
    
function toggleFullScreen() {
    let video = document.querySelector('#okno');
    if (!document.mozFullScreen && !document.webkitFullScreen) {
      if (video.mozRequestFullScreen) {
        video.mozRequestFullScreen();
      } else {
        video.webkitRequestFullScreen(Element.ALLOW_KEYBOARD_INPUT);
      }
    } else {
      if (document.mozCancelFullScreen) {
        document.mozCancelFullScreen();
      } else {
        document.webkitCancelFullScreen();
      }
    }
  }
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



function creatVideo(src){
    let box = document.createElement('video');
    box.setAttribute('src', src);
    
    box.setAttribute('id', 'okno');
    box.setAttribute('controls', 'controls');
    box.setAttribute('preload', 'auto');
    box.setAttribute('muted', 'muted');
    box.setAttribute('autoplay', 'auto');
    document.querySelector('#Vid').append(box);
   
}
function proсess(){
    creatVideo(arrayVideo[i]);
    
    toggleFullScreen()
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

// админ панель



