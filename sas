#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
int choose,chooseagain,chooseagainplease,numberofaccounts,n=0,i,j=0;

//la définition de la strecture compte_bancaire
typedef struct clients
{
	char CIN[10];
	char Nom[20];
	char Prenom[20];
	double Montant;

}clients;
struct clients Users[50];
//prototype de tout les fonctions
void add_clients();
void add_client();
void afficher_accounts();
void tri_ascendant();
void tri_descendant();
void rechercher_CIN();
void fedilisation();
int main()
{
    double takeammountoradd, smollerorbiggerthen;
    char cin[10];
    do
    {
      printf("   you add %d accounts\n",n);
      printf("1   :  add only one account \n");
      printf("2   :  add one account or more  \n");
      printf("3   :  Opiration\n");
      printf("4   :  affichage\n");
      printf("5   :  rechercher about account by  CIN\n");
      printf("6   :  Fideclisation\n");
      printf("7   :  quite\n");
      printf("\n choose one from those please : ");
      scanf("%d",&choose);
    switch(choose)
    {
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
case 1:
        add_client();
        system("pause");
		break;
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
case 2 :
        add_clients();
		system("pause");
		break;
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
case 3 :
        do
    {
       printf("1   : take money from account\n");
       printf("2   : add money to account \n");
        printf("3  : GO TO THE PAGE BEFFORE\n");
       printf("\n choose one from those please : ");
       scanf("%d",&chooseagain);
       switch(chooseagain)
          {
//***************************
              case 1:
                    if(n==0){
                    printf("you  must  creet account first\n");
                    }
                    else{
                    printf("rechercher about the account by CIN : ");
                    scanf("%s",cin);
                    for(i=1;i<=n;i++)
                    {
                    if(strcmp(cin,Users[i].CIN)==0)
                    {
                    printf ("give me the price that you want to take it: ");
                    scanf ("%lf", &takeammountoradd);
                     if (takeammountoradd<=Users[i].Montant)
                     {
                     Users[i].Montant=Users[i].Montant-takeammountoradd;
                     printf("you still have : %.2lf\n",Users[i].Montant);
                     }
                    else
                     {
                     printf("you cant take more then what do you have\n");
                     }
                     }
                     }
                    }
                    system("pause");

		     break;
//***************************
             case 2 :
                     if(n==0){
                     printf("you have to creat account first \n");
                     }
                     else{
                     printf("rechercher about your account by CIN : ");
                     scanf("%s",cin);
                     for(i=1;i<=n;i++)
                     {
                     if(strcmp(cin,Users[i].CIN) == 0)
                     {
                     printf ("how much you want to add: ");
                     scanf ("%lf", &takeammountoradd);
                     Users[i].Montant=Users[i].Montant+takeammountoradd;
                     printf("know you have : %.2lf\n",Users[i].Montant);
                     }
                     }
                     }
                     system("pause");
                break ;
//***************************
                case 3:
                     printf(" GO TO THE PAGE BEFFORE THIS  \n");
                break ;
//***************************
       }
    }while(chooseagain!=3);
     break;
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
case 4:
      do
       {
      printf("1   :  tri accounts ascendant \n");
      printf("2   :  tri account descendant\n");
      printf("3   : tri account ascendant by order from the number that you will give it to me \n");
      printf("4   :  tri account descendant by order from the number that you will give it to me\n");
       printf("5  :  GO TO THE PIGE BIFFORE THIS\n");
       printf("\n choose one from those please : ");
       scanf("%d",&chooseagainplease);
       switch(chooseagainplease)
                {
//===========================================================
        case 1:
                tri_ascendant();
                afficher_accounts();
                 system("pause");
        break;
//===========================================================
        case 2 :
                tri_descendant();
                afficher_accounts();
                 system("pause");
        break ;
//===========================================================
        case 3:
                if(n==0){
                 printf("you have to creat accounts first\n");
                }
                else{
                printf("give me the amount  : ");
                scanf("%lf",&smollerorbiggerthen);
                tri_ascendant();
                for(i=1;i<=n;i++)
                {
                if(Users[i].Montant>smollerorbiggerthen)
                {
                printf("CIN :%s\nNom : %s\nPrenom : %s\nMontant : %.2lf DH\n",Users[i].CIN,Users[i].Nom,Users[i].Prenom,Users[i].Montant);
                }
                printf("**\n");
                }
                }
                 system("pause");

        break;
//===========================================================
        case 4:
                 if(n==0){
                 printf("you have to creat account first\n");
                 }
                 else{
                 printf("give me the amount : ");
                 scanf("%lf",&smollerorbiggerthen);
		         tri_descendant();
                 for(j=1;j<=n;j++)
                 {
                 if(Users[j].Montant>smollerorbiggerthen)
                 {
                 printf("CIN :%s\nNom : %s\nPrenom : %s\nMontant : %.2lf DH\n",Users[j].CIN,Users[j].Nom,Users[j].Prenom,Users[j].Montant);
                 }
                 }
                 }
                  system("pause");
        break;
//===========================================================
        case 5 :
                printf(" thanks for bieng here see you next time by  \n");
        break;
break;
}
}while(chooseagain!=4);
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
case 5:
          if(n==0){
          printf("you have to creat account first \n");
          }
          else{
          rechercher_CIN();
          }
           system("pause");
break;
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
case 6 :

      if(n<3){
      for( i =1;i<=n;i++){
      printf("\n- we gonna add 1.3 to %s  : %.2lf",Users[i].CIN,Users[i].Montant);
      printf("\n");
      Users[i].Montant += (Users[i].Montant*1.3)/100;
      printf("\nnow he have  %.2lf ",Users[i].Montant);
       printf("\n");
      }
     }
     else{
     tri_descendant();
     for( i =1;i<=3;i++){
     printf("\n- we gonna add 1.3 to %s  : %.2lf",Users[i].CIN,Users[i].Montant);
      printf("\n");
      Users[i].Montant += (Users[i].Montant*1.3)/100;
      printf("\n now he have %.2lf ",Users[i].Montant);
      printf("\n");
     }
     }
     break ;


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
case 7:
          printf ("thanks for bieng here see you nexr time");
break ;

default : printf("your chooce is not working \n");
           system("pause");

}
}while(choose!=7);
return 0;
}

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 void add_clients()
{
   printf("how many account you wanna add : ");
   scanf("%d",&numberofaccounts);
   printf("\n\n");
   for(i=1;i<=numberofaccounts;i++) {
      printf("give me information about account number %d :  \n",n+1);
      printf("CIN : ");
      scanf("%s",Users[n+1].CIN);
      printf("Nom : ");
      scanf("%s",Users[n+1].Nom);
      printf("Prenom : ");
      scanf("%s",Users[n+1].Prenom);
      printf("Montant : ");
      scanf("%lf",&Users[n+1].Montant);
      n=n+1;
}
}
//===========================================================================+++++++============
void add_client()
{
    printf("\n\n");
    printf("give me informations about account number %d :  \n\n",n+1);
    printf(" your CIN : ");
    scanf("%s",Users[n+1].CIN);
    printf("your Name : ");
    scanf("%s",Users[n+1].Nom);
    printf("your family name: ");
    scanf("%s",Users[n+1].Prenom);
    printf("your amount : ");
    scanf("%lf",&Users[n+1].Montant);
    n=n+1;
    printf("\n\n");
}
//******************************
void afficher_accounts()
{

    for(i=1;i<=n;i++)
    {

        printf("CIN :%s\nNom : %s\nPrenom : %s\nMontant : %.2lf DH\n",Users[i].CIN,Users[i].Nom,Users[i].Prenom,Users[i].Montant);
    }
}

//***************************
void tri_ascendant()
{
    char tempCIN[10], tempNom[20], tempPrenom[20];
    double tempMontant;
    for(i=1;i<n;i++)
    {
        for(j=i+1;j<=n;j++)
        {
            if(Users[j].Montant<Users[i].Montant)
            {
                strcpy(tempCIN,Users[i].CIN);
                strcpy(Users[i].CIN,Users[j].CIN);
                strcpy(Users[j].CIN,tempCIN);

                strcpy(tempNom,Users[i].Nom);
                strcpy(Users[i].Nom,Users[j].Nom);
                strcpy(Users[j].Nom,tempNom);

                strcpy(tempPrenom,Users[i].Prenom);
                strcpy(Users[i].Prenom,Users[j].Prenom);
                strcpy(Users[j].Prenom,tempPrenom);

                tempMontant=Users[i].Montant;
                Users[i].Montant=Users[j].Montant;
                Users[j].Montant=tempMontant;
            }
        }
    }
}
