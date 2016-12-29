#include<iostream>
#include <queue>
using namespace std;
 
struct queueEntry
{
    int v;     
    int dist;  
};
 
int getMinDiceThrows(int move[], int N,int r)
{
    bool *visited = new bool[N];
    for (int i =r; i < N; i++)
        visited[i] = false;
 
        queue<queueEntry> q;
 
    
    visited[r] = true;
    queueEntry s = {r, 0}; 
    q.push(s);  
 
   
    queueEntry qe;  
    while (!q.empty())
    {
        qe = q.front();
        int v = qe.v; 
 
        
        if (v == N-1)
            break;
 
        
        q.pop();
        for (int j=v+1; j<=(v+6) && j<N; ++j)
        {
            
            if (!visited[j])
            {
                
                queueEntry a;
                a.dist = (qe.dist + 1);
                visited[j] = true;
 
                
                if (move[j] != -1)
                    a.v = move[j];
                else
                    a.v = j;
                q.push(a);
            }
        }
    }
 
    
    return qe.dist;
}
 

int main()
{
    
    int l=0;
    int m=0;
    int o[3];
    int f=0;
    int min=0;
    int snakecount=0;
    int laddercount=0;
    
    int k;
    int N = 30;
    int moves[N];
    for (int i = 0; i<N; i++)
        moves[i] = -1;
 
    
    moves[2] = 21;
    moves[4] = 7;
    moves[10] = 25;
    moves[19] = 28;
 
    
    moves[26] = 0;
    moves[20] = 8;
    moves[16] = 3;
    moves[18] = 6;
    for(k=0;k<N;k++)
    {
        if(moves[k]!=-1)
        {
           if(moves[k]<k)
           snakecount++;
        }
    }
    cout<<"No of snakes:"<<snakecount<<"\n";
    for(k=0;k<N;k++)
    {
        if(moves[k]!=-1)
        {
           if(moves[k]>k)
           laddercount++;
        }
    }
    cout<<"No of ladders:"<<laddercount<<"\n";
 
    cout << "Minimum steps to reach the end : " << getMinDiceThrows(moves, N,0);
    for(k=0;k<N;k++)
    {
        if(moves[k]!=-1)
        {
           if(moves[k]<k)
           {
              l=getMinDiceThrows(moves, k,0);
              m=getMinDiceThrows(moves, N,moves[k]);
              o[f]=l+m;
              f++;

           }
        }
    } 
    min=o[0]; 
    for(k=1;k<4;k++)
    {
     if(o[k]<min)
        min=o[k];
    }
    cout<<"\nMinimum steps to reach the end after one snake bite:"<<min<<"\n";
         return 0;
         
}
