BEGIN{
   RS=""
}
{
	count=1
	credit=0
   tot_field=NF
   print ($1)
	for(i=0;i<tot_field-1;i++)
	   {
           if((index($i,"(Absent)") !=0) || (index($1,"(F)") !=0))
            {
               count=count+1
               break
            }

	   	  if(index($i,"(O)") !=0)
            {
               credit=credit+10
            }

           if(index($i,"(A+)") !=0)
            {
               credit=credit+9.5
            }  
           if(index($i,"(A)") !=0)
            {
               credit=credit+9
            }
           if(index($i,"(B+)") !=0)
            {
               credit=credit+8.5
            }
           if(index($i,"(B)") !=0)
            {
               credit=credit+8
            }
           if(index($i,"(C+)") !=0)
            {
               credit=credit+7
            }
           if(index($i,"(C)") !=0)
            {
               credit=credit+6
            }     
           cgpa=credit/(tot_field-1) 
	  	}
	  	print("The student fails "count)
	  	print(cgpa)
	   

		
}
