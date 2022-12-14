#!/bin/bash

# Define the animate function
animate() {

    tput sc

    # The frames of the animation
    frames=(
      "



                                   &#                                           
                                  (/(###       &#@@#                            
                                      //(#####(((//@                            
                                         @(((                   #//////&        
         @///////                       @(##@         *////// &**//////*(       
        ***//////*(  **////@        ((###@@@###((   #**/////**(,,*****,*(       
        **************//////*&     /(((#######((/@  @*********@ ,,*,,,,         
         ,,,***,,*&,*********#     /(((.#### (((/&    ,*,,,**(#(& (****@        
           &@   /((@,,,***,*@     #//*//((##((*//          (((//**//////*#      
       @**/////**((((/            (/(((((((((((/#        &##// &,*********      
      @***//////*////((#          //((((((((((//       ##(/     @,,*****/       
       ,*******,*&   #/((##&      ((((((###((((//((#((//                        
         *,,,,*           (/(((####(((((####(((////                             
                                ///(((((####@(((/@                              
                                   //((((###@@#((/                              
                                    ///(((#####(((#&                            
                                     ///((((####(((@@                           
                                      ///((#@(###(((/@                          
                                       (//((((((##((((@                         
                                        #///((((#@@(((/                         
                                         &///((((#@#((//                        
                                        #(###((((#((((#//#                      
                                       ((#####(((((((##///(                     
                                      (((((((((((((//((////(                    
                                  (((((//////////////@   //(                    
                                &(((/#&                 ((#(#                   
                                (((//                   ///(((####              
                                &/((##                                          

          "
        "



                                            #&                                  
                            @####       @###(/@                                 
                             #//((######(/(                                     
         #/////*&                   /(/                                         
        **/////***  *////*(         (##(&                      &//////*         
        ********,,/*//////**&   ((###@@###(((        (////*/  **//////**(       
         &,,,,,,/ /*********   (((########((/(     (*//////**************       
         #****@ ((((,,,,,*/    (/((*,###(/(((/     *********,* ,*,***,,*        
       /*/////***//((&          //*((##((//,(/      /,,**,,,,#(/@  &@&          
       ********,* &/(#(         //(((((((((((/@           &/((((**/////**       
        *,***,**     @/##@      @//(((((#((((/#          (#(///***/////***      
                         //((##(//(((####((((/&      @##(//&   #,********/      
                             &////(((####(((((####((//#          #,,,,*(        
                               (/(((@###(((((///(                               
                              #(((@@####(((//&                                  
                             (#((######(((//#                                   
                            (@(((##((((((//#                                    
                           (((((###(@((///#                                     
                          //((##((((((///&                                      
                         #((((@@(((((///                                        
                         //((@@(((((///                                         
                       ///@((((#((((###(                                        
                      ////#((((((((#####((                                      
                     (////#///(((((((((((((                                     
                     //@   (//////////////(/(((                                 
                    ((#(/                 &//(((                                
              @####(((//(                  &//((#                               
                                           (#((/                                

          "
    )

    for ((i=0;i<10;i++)); do
        for frame in "${frames[@]}"; do

            tput clear

            printf "$frame\r\e[K"

            sleep 0.18
        done
    done

    tput rc
    tput cup 0 0
    tput clear
}

animate

