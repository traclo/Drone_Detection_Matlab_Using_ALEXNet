load ('myNet.mat');
cam = webcam;


while true
    pic = snapshot (cam);
    pic = imresize(pic,[227,227]); 
    [label,score] = classify(myNet,pic); 
    max(score)
    image(pic);  
 
   %% Background suppression logic
   
   if (max(score)>0.97)
       {
            title(char(label),'FontSize',20, 'color', 'black');
       }
   else if (max(score)<0.97)       
       {           
            title(char('No Drone'),'FontSize',20, 'color', 'black');
       }        
       end
   end
  
   %% over
   
    drawnow;
    
end
