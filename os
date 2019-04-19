int p,i,j,c=0,x=0,available;  
int allocation[10],max[10],need[10],flag[10],sequence[10];
  printf("----------------------------------\n");
  printf("Enter the number of process : ");  
scanf("%d",&p);  printf("----------------------------------\n"); 
 for(i=0;i<p;i++)
  {      
flag[i]=0;  //initially no process's need is fulfilled 
 }  
for(i=0;i<p;i++)
  {      
 printf("\nEnter the ALLOCATION for process P[%d] : ",i);  
    scanf("%d",&allocation[i]);    
  printf("Enter the MAX for process P[%d] : ",i);   
   scanf("%d",&max[i]);  
} 
 printf("\n----------------------------------\n"); 
 printf("Enter the AVAILABLE resources :");  
scanf("%d",&available);  printf("----------------------------------\n"); 
 
 for
(i=0;i<p;i++)
  {   
   need[i]=max[i]-allocation[i]; 
 } 

  printf("\n----------------------------------\n"); 
 for(i=0;i<p;i++) 
 {    
  printf("Need of P[%d] is : %d\n",i,need[i]); 
 }  
printf("----------------------------------\n"); 
 
 for(i=0;i<p;i++)
  {     
 for(j=0;j<p;j++)    
  {        
  if(flag[j]==0 && need[j]<=available)         
 {      
     available=available+allocation[j];       
    flag[j]=1;       
    printf("\n-----------------------------------------\n");     
   printf("Process %d has been allocated resources",j);       
    sequence[c]=j;    
       c++;      
    }    
  }  
}  
printf("\n-----------------------------------------\n");  
for(i=0;i<p;i++)  
{      
if(flag[i]==0)   
   {    
   printf("\n\t*************************************\n");   
    printf("\t\tSYSTEM IS IN UNSAFE STATE\n");       printf("\t*************************************\n");   
    x=1; 
      break;   
   }  
  }  
if(x==0) 
 {  
 printf("\n\t*************************************\n");   
printf("\t\tSYSTEM IS IN SAFE STATE\n");   printf("\t*************************************\n");
   printf("\n-------------------------------------\n");
   printf("Safe sequence is : ");   
for(i=0;i<p;i++)  
 {  
     printf("P[%d]  ",sequence[i]);   }   printf("\n-------------------------------------\n"); 
} 
