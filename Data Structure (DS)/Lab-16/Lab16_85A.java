// Write a program to create a graph & implement the adjacency list 
// representation of the graph 
//  Apply DFS and BFS on the given graph. 

import java.util.*;

public class Lab16_85A{
    Map<Integer , List<Integer>> adjacencyList ;

    public Lab16_85A(){
        adjacencyList = new HashMap<>();
    }
    public void addEdge (int u , int v ){
        adjacencyList.putIfAbsent(u, new ArrayList<>());
        adjacencyList.putIfAbsent(v, new ArrayList<>());
        adjacencyList.get(u).add(v);
        adjacencyList.get(v).add(u); // for undirected graphs
    }

    public void dfs(int start){
        Set<Integer> visited = new HashSet<>();
        dfsHelper(start, visited);
    }
    private void dfsHelper (int vertex, Set<Integer> visited){
        visited.add(vertex);
        System.out.print(vertex + " ");
        for(int neighbor : adjacencyList.getOrDefault(vertex , new ArrayList<>())){
            if(!visited.contains(neighbor)){
                dfsHelper(neighbor, visited);
            }
        }
    }

    public void bfs(int start){
        Set<Integer> visited = new HashSet<>();
        Queue<Integer> queue = new LinkedList<>();
        queue.add(start);
        visited.add(start);

        while (!queue.isEmpty()) {
            int vertex = queue.poll();
            System.out.print(vertex + " ");
            for (int neighbor : adjacencyList.getOrDefault(vertex, new ArrayList<>())) {
                if (!visited.contains(neighbor)) {
                    visited.add(neighbor);
                    queue.add(neighbor);
                }
            }
        }
    }

    public static void main(String[] args) {
        Lab16_85A graph = new Lab16_85A();
        graph.addEdge(0, 1);
        graph.addEdge(0, 2);
        graph.addEdge(1, 2);
        graph.addEdge(2, 0);
        graph.addEdge(2, 3);
        graph.addEdge(3, 3);
        
        System.out.println("DFS traversal:");
        graph.dfs(2);
        
        System.out.println("\nBFS traversal:");
        graph.bfs(2);
    }
}