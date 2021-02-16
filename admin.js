let row = document.querySelectorAll('.row');
let btnNext = document.querySelector(".btn_panel>li:nth-of-type(4)"),
btnDelete = document.querySelector(".btn_panel>li:nth-of-type(2)"),
btnRedo = document.querySelector(".btn_panel>li:nth-of-type(6)"),
btnSave =document.querySelector(".btn_panel>li:nth-of-type(5)")
btnPrevious = document.querySelector(".btn_panel>li:nth-of-type(3)"),
tbody = document.querySelector('input[name = "element" ]').parentElement.parentElement.parentElement;
let array = [];

                   function workbtn (metod,pred) 
                            {
                                     
                                let pae = document.querySelector('input[name = "element" ]:checked').parentElement.parentElement;               
                                     
                                              eval(`if(pae.${metod} != null )
                                                                {
                                                                         
                                                                                  document.querySelector('input[name = "element" ]:checked').parentElement.parentElement.${pred}( pae.${metod});           
                                                                         
                                                                
                                                                }`)       
                                              
                                     
                            }
                            
                            btnNext .addEventListener('click',()=>{
                                     
                                     if(document.querySelector('input[name = "element" ]:checked' ) == null){
                                              console.log('Вы не выбрали строку');
                                     }else
                                     {           
                                              workbtn("nextElementSibling" ,"before");
                                     }
                   
                            })
                            btnPrevious.addEventListener('click',()=>{
                                     
                                     if(document.querySelector('input[name = "element" ]:checked' ) == null){
                                              console.log('Вы не выбрали строку');
                                     }else
                                     {           
                                              workbtn("previousElementSibling","after");
                                     }
                   
                            })
// console.log(document.querySelector('input[name = "element" ]:checked'))
                            btnDelete.addEventListener('click',()=>
                            {
                                     document.querySelector('input[name = "element" ]:checked').parentElement.parentElement.remove();
                            });
                            btnSave.addEventListener('click',()=>
                            {
                                
                                function subForm (){
                                    // document.querySelectorAll('.save_form').addEventListener('submit',(e)=>
                                    // {
                                        console.log(document.querySelectorAll('.save_form').length)
                                        for(let i = 1; i < document.querySelectorAll('.save_form').length+1;i++)
                                        {
                                           document.forms[i] .addEventListener('submit',(e)=>
                                           {
                                               e.preventDefault();
                                    //         let xhr = new XMLHttpRequest();
                                    //         xhr.open("POST","save.php");
                                    //         xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
                                    //         xhr.onreadystatechange = function ()
                                    //                 {
                                    //                         if(this.readyState === 4 && this.status == 200)
                                    //                         {
                                    //                                     let array_data =[];
                                    //                                     array_data.push(this.responseText);
                                                                    
                                    //                         }
                                                           
                                    //                 }
                                            
                                    // xhr.send('Name=34' );
                                                    


                                            })
                                        }
                                    // 
                                }
                                //  {
                                    let form = document.createElement("form");
                                        btnForm = document.createElement("button");
                                        btnForm.innerHTML = 'обновить';
                                        btnForm.className = 'btnForm';
                                        form.append(btnForm );
                                        
                                    function o ()
                                    {
                                        for(let i = 0; i <tbody.children.length; i++)
                                    {
                                        // array.push(.children.children[i])   ;
                                        
                                        ;
                                        form.setAttribute('method','POST');
                                        form.setAttribute('name','save' + i);
                                        form.className ='save_form';
                                        form.setAttribute('action','./save.php');
                                           document.body.append(form);
                                           
                                            
                                function perebor(list)
                                {
                                    let listLength = list.children.length
                                   
                                   for(let j = 1; j < listLength; j++)
                                    {
                                        
                                        form.prepend(list.children[j].children[0]);
                                      
                                        
                                    }
                                }
                                perebor(tbody.children[i])                                        
                               
                                    }  subForm() 
                                    console.log(array[0])
                                    return array; 
                                    }
                                    o()
                                //  }
                                
                                let btn_check =  document.querySelectorAll('.row');
                                btn_check.forEach(item=>{
                                    item.style.display = "none"
                                })
                                // btn_check[0].style.display = "none"
                               
                            })
                            
                            // console.log(array)
