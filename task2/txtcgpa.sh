BEGIN{
   RS=""
}
{
	count1=1
	credit1= credit2= credit3= credit4= credit5= credit6= credit7= credit8= credit9= 1
   no_sub=NF-1
    print(no_sub)
	for(i=1;i<no_sub;i++)
	   {
	   	 if(index($i,"(F)") !=0 || index($i,"(Absent)") !=0)
	   	  	count=count+1
	     if(index($i,"(O)") !=0)
            credit1=credit*10
         if(index($i,"(A+)") !=0)
         	credit2=credit*9
         if(index($i,"(A)") !=0)
         	credit3=credit*8.5
         if(index($i,"(B+)") !=0)
         	credit4=credit*8
         if(index($i,"(B)") !=0)
         	credit5=credit*7
         if(index($i,"(C)") !=0)
         	credit6=credit*6
         if(index($i,"(P)") !=0)
         	credit7=credit*5
         if(index($i,"(FE)") !=0)
         	credit8=credit*0
         if(index($i,"(I)") !=0)
         	credit9=credit*0
          cgpa=(credit1+credit2+credit3+credit4+credit5+credit6+credit7+credit8+credit9)/11
	  	}
	  	print("The student fails "count)
	  	print(cgpa)
	   

		
}
