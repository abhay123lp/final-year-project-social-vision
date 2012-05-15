/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.operations;

import com.data.dataitems.TopsyProcessedDataItem;
import com.data.dataitems.TopsyProcessedSimpleDataItem;
import com.data.structures.Edge;
import com.data.structures.Graph;
import com.data.structures.Node;
import java.sql.SQLException;
import java.util.Vector;
import javax.naming.NamingException;

/**
 *
 * @author Phil
 */
public class DBGraphingOperations {
     // Colours 
    public static String intel_colour = "0x333333";
    public static String samsung_colour = "0x333333";
    public static String imagination_Technologies_colour = "0x333333";
    public static String imgtec_colour = "0x333333";
    public static String ARM_colour = "0x333333";
    public static String google_colour = "0x333333";
    public static String apple_colour = "0x333333";
    public static String HTC_colour = "0x333333";
    public static String sony_colour = "0x333333";
    public static String blackberry_colour = "0x333333";
    public static String nokia_colour = "0x333333";
    public static String motorola_colour = "0x333333";
    public static String LG_colour = "0x333333";
    public static String microsoft_colour = "0x333333";
    public static String IBM_colour = "0x333333";
    public static String ARM_Holdings_colour = "0x333333";
    public static String RIM_colour = "0x333333";
    
    public static String size_intel = "50";
    public static String size_samsung = "50";
    public static String size_imagination_technologies = "50";
    public static String size_imgtec = "50";
    public static String size_ARM = "50";
    public static String size_google = "50";
    public static String size_apple = "50";
    public static String size_HTC = "50";
    public static String size_sony = "50";
    public static String size_blackberry = "50";
    public static String size_nokia = "50";
    public static String size_motorola = "50";
    public static String size_LG = "50";
    public static String size_microsoft = "50";
    public static String size_IBM = "50";
    public static String size_ARM_Holdings = "50";
    public static String size_RIM = "50";
    
    // For Historical Topsy Data
    public static Graph makeGraphFromSingleCompanyHistorical(String company_name, String from_date, String to_date) throws NamingException, SQLException
    {
       Graph aGraph = new Graph ();
       aGraph = addAllCompanyNodes(aGraph);
       aGraph = addAllEdgesForCompany(aGraph, company_name, from_date, to_date, -1);      
       return aGraph;
    }
    
    // For Historical Topsy Data
    public static Graph makeCompleteGraphFromData(String from_date, String to_date) throws NamingException, SQLException
    {
       Graph aGraph = new Graph ();
       int skip_comp_id = 1;
       
       aGraph = addAllCompanyNodes(aGraph);
       
       aGraph = addAllEdgesForCompany(aGraph, "Intel", from_date, to_date,skip_comp_id);
       skip_comp_id = changeSkipId(skip_comp_id);
       
       aGraph = addAllEdgesForCompany(aGraph, "Samsung", from_date, to_date,skip_comp_id);
       skip_comp_id = changeSkipId(skip_comp_id);
       
       aGraph = addAllEdgesForCompany(aGraph, "Imagination Technologies", from_date, to_date,skip_comp_id);
       skip_comp_id = changeSkipId(skip_comp_id);
       
       aGraph = addAllEdgesForCompany(aGraph, "Imgtec", from_date, to_date,skip_comp_id);
       skip_comp_id = changeSkipId(skip_comp_id);
       
       aGraph = addAllEdgesForCompany(aGraph, "ARM", from_date, to_date,skip_comp_id);
       skip_comp_id = changeSkipId(skip_comp_id);
       
       aGraph = addAllEdgesForCompany(aGraph, "Google", from_date, to_date,skip_comp_id);
       skip_comp_id = changeSkipId(skip_comp_id);
       
       aGraph = addAllEdgesForCompany(aGraph, "Apple", from_date, to_date,skip_comp_id);
       skip_comp_id = changeSkipId(skip_comp_id);
       
       aGraph = addAllEdgesForCompany(aGraph, "HTC", from_date, to_date,skip_comp_id);
       skip_comp_id = changeSkipId(skip_comp_id);
       
       aGraph = addAllEdgesForCompany(aGraph, "Sony", from_date, to_date,skip_comp_id);
       skip_comp_id = changeSkipId(skip_comp_id);
       
       aGraph = addAllEdgesForCompany(aGraph, "Blackberry", from_date, to_date,skip_comp_id);
       skip_comp_id = changeSkipId(skip_comp_id);
       
       aGraph = addAllEdgesForCompany(aGraph, "Nokia", from_date, to_date,skip_comp_id);
       skip_comp_id = changeSkipId(skip_comp_id);
       
       aGraph = addAllEdgesForCompany(aGraph, "Motorola", from_date, to_date,skip_comp_id);
       skip_comp_id = changeSkipId(skip_comp_id);
       
       aGraph = addAllEdgesForCompany(aGraph, "LG", from_date, to_date,skip_comp_id);
       skip_comp_id = changeSkipId(skip_comp_id);
       
       aGraph = addAllEdgesForCompany(aGraph, "Microsoft", from_date,to_date,skip_comp_id);
       skip_comp_id = changeSkipId(skip_comp_id);
       
       aGraph = addAllEdgesForCompany(aGraph, "IBM", from_date, to_date,skip_comp_id);
       skip_comp_id = changeSkipId(skip_comp_id);
       
       aGraph = addAllEdgesForCompany(aGraph, "ARM Holdings", from_date, to_date,skip_comp_id);
       skip_comp_id = changeSkipId(skip_comp_id);
       
       aGraph = addAllEdgesForCompany(aGraph, "RIM", from_date, to_date,skip_comp_id);
       
       return aGraph;
    }
    
    public static int changeSkipId(int skip_comp_id){
        skip_comp_id = skip_comp_id + 1;
        return skip_comp_id;
    }
    
    public static Graph addAllEdgesForCompany(Graph aGraph, String company_name, String from_date, String to_date, int skip_comp_id) throws NamingException, SQLException
    {
        int no_Intel_comments = 0;
        int no_Samsung_comments = 0;
        int no_Imagination_Technologies_comments = 0;
        int no_Imgtec_comments = 0;
        int no_ARM_comments = 0;
        int no_Google_comments = 0;
        int no_Apple_comments = 0;
        int no_HTC_comments = 0;
        int no_Sony_comments = 0;
        int no_Blackberry_comments = 0;
        int no_Nokia_comments = 0;
        int no_Motorola_comments = 0;
        int no_LG_comments = 0;
        int no_Microsoft_comments = 0;
        int no_IBM_comments = 0;
        int no_ARM_Holdings_comments = 0;
        int no_RIM_comments = 0;
        int total_comments;
        
       Vector<TopsyProcessedDataItem> resultList = null;
       resultList = DBTopsyOperations.getTopsyProcessedData(company_name, from_date, to_date);
        
       // Go through and sum the external company mentions 
       for(int i = 0; i < resultList.size() ; i++)
       {
            no_Intel_comments = no_Intel_comments + resultList.get(i).no_Intel_comments ;
            no_Samsung_comments = no_Samsung_comments + resultList.get(i).no_Samsung_comments ;
            no_Imagination_Technologies_comments = no_Imagination_Technologies_comments + resultList.get(i).no_Imagination_Technologies_comments ;
            no_Imgtec_comments =  no_Imgtec_comments+ resultList.get(i).no_Imgtec_comments ;
            no_ARM_comments = no_ARM_comments + resultList.get(i).no_ARM_comments ;
            no_Google_comments = no_Google_comments + resultList.get(i).no_Google_comments;
            no_Apple_comments = no_Apple_comments + resultList.get(i).no_Apple_comments ;
            no_HTC_comments = no_HTC_comments + resultList.get(i).no_HTC_comments ;
            no_Sony_comments = no_Sony_comments + resultList.get(i).no_Sony_comments ;
            no_Blackberry_comments = no_Blackberry_comments + resultList.get(i).no_Blackberry_comments ;
            no_Nokia_comments = no_Nokia_comments + resultList.get(i).no_Nokia_comments ;
            no_Motorola_comments = no_Motorola_comments + resultList.get(i).no_Motorola_comments ;
            no_LG_comments = no_LG_comments + resultList.get(i).no_LG_comments ;
            no_Microsoft_comments = no_Microsoft_comments + resultList.get(i).no_Microsoft_comments ;
            no_IBM_comments = no_IBM_comments + resultList.get(i).no_IBM_comments ;
            no_ARM_Holdings_comments = no_ARM_Holdings_comments + resultList.get(i).no_ARM_Holdings_comments ;
            no_RIM_comments = + resultList.get(i).no_RIM_comments;
       }  
       
       // Sum every comment
       total_comments = no_Intel_comments + no_Samsung_comments + no_Imagination_Technologies_comments + no_Imgtec_comments + no_ARM_comments
               + no_Google_comments + no_Apple_comments + no_HTC_comments + no_Sony_comments + no_Blackberry_comments + no_Nokia_comments 
               + no_Motorola_comments + no_LG_comments + no_Microsoft_comments + no_IBM_comments + no_ARM_Holdings_comments + no_RIM_comments;
       
        Edge tempEdge;
        String current_primary_node_id = getNodeIdFromCompanyName(company_name);

        if (!company_name.equals("Intel") && (no_Intel_comments != 0) && (skip_comp_id == -1)){
            tempEdge = createEdge(current_primary_node_id, "1", no_Intel_comments, total_comments); 
            aGraph.edges.add(tempEdge);
        }
        
        if (!company_name.equals("Samsung")&&(no_Samsung_comments != 0) && ((skip_comp_id < 2) || (skip_comp_id == -1) )){
            tempEdge = createEdge(current_primary_node_id, "2", no_Samsung_comments, total_comments);             
            aGraph.edges.add(tempEdge);
        }
        if (!company_name.equals("Imagination Technologies")&&(no_Imagination_Technologies_comments != 0) && ((skip_comp_id < 3) || (skip_comp_id == -1) )){
            tempEdge = createEdge(current_primary_node_id, "3", no_Imagination_Technologies_comments, total_comments); 
            aGraph.edges.add(tempEdge); 
        }            
        if (!company_name.equals("Imgtec")&&(no_Imgtec_comments != 0)&& ((skip_comp_id < 4) || (skip_comp_id == -1) )){
            tempEdge = createEdge(current_primary_node_id, "4", no_Imgtec_comments, total_comments); 
            aGraph.edges.add(tempEdge);
        }
        if (!company_name.equals("ARM")&&(no_ARM_comments != 0) && ((skip_comp_id < 5) || (skip_comp_id == -1) )){
            tempEdge = createEdge(current_primary_node_id, "5", no_ARM_comments, total_comments); 
            aGraph.edges.add(tempEdge);
        }
        if (!company_name.equals("Google")&&(no_Google_comments != 0) && ((skip_comp_id < 6) || (skip_comp_id == -1) )){
            tempEdge = createEdge(current_primary_node_id, "6", no_Google_comments, total_comments); 
            aGraph.edges.add(tempEdge);
        }
        if (!company_name.equals("Apple")&&(no_Apple_comments != 0) && ((skip_comp_id < 7) || (skip_comp_id == -1) )){
            tempEdge = createEdge(current_primary_node_id, "7", no_Apple_comments, total_comments); 
            aGraph.edges.add(tempEdge);
        }
        if (!company_name.equals("HTC")&&(no_HTC_comments != 0) && ((skip_comp_id < 8) || (skip_comp_id == -1) )){
            tempEdge = createEdge(current_primary_node_id, "8", no_HTC_comments, total_comments);
            aGraph.edges.add(tempEdge);
        }
        if (!company_name.equals("Sony")&&(no_Sony_comments != 0)&& ((skip_comp_id < 9) || (skip_comp_id == -1) )){
            tempEdge = createEdge(current_primary_node_id, "9", no_Sony_comments, total_comments);
            aGraph.edges.add(tempEdge);
        }
        if (!company_name.equals("Blackberry")&&(no_Blackberry_comments != 0)&& ((skip_comp_id < 10) || (skip_comp_id == -1) )){
            tempEdge = createEdge(current_primary_node_id, "10", no_Blackberry_comments, total_comments);
            aGraph.edges.add(tempEdge);
        }
        if (!company_name.equals("Nokia")&&(no_Nokia_comments != 0)&& ((skip_comp_id < 11) || (skip_comp_id == -1) )){
            tempEdge = createEdge(current_primary_node_id, "11", no_Nokia_comments, total_comments);
            aGraph.edges.add(tempEdge);
        }
        if (!company_name.equals("Motorola")&&(no_Motorola_comments != 0)&& ((skip_comp_id < 12) || (skip_comp_id == -1) )){
            tempEdge = createEdge(current_primary_node_id, "12", no_Motorola_comments, total_comments);
            aGraph.edges.add(tempEdge);
        }
        if (!company_name.equals("LG")&&(no_LG_comments != 0)&& ((skip_comp_id < 13) || (skip_comp_id == -1) )){
            tempEdge = createEdge(current_primary_node_id, "13", no_LG_comments, total_comments);
            aGraph.edges.add(tempEdge);
        }
        if (!company_name.equals("Microsoft")&&(no_Microsoft_comments != 0)&& ((skip_comp_id < 14) || (skip_comp_id == -1) )){
            tempEdge = createEdge(current_primary_node_id, "14", no_Microsoft_comments, total_comments);
            aGraph.edges.add(tempEdge);
        }
        if (!company_name.equals("IBM")&&(no_IBM_comments != 0)&& ((skip_comp_id < 15) || (skip_comp_id == -1) )){
            tempEdge = createEdge(current_primary_node_id, "15", no_IBM_comments, total_comments);
            aGraph.edges.add(tempEdge);
        }
        if (!company_name.equals("ARM Holdings")&&(no_ARM_Holdings_comments != 0) && ((skip_comp_id < 16) || (skip_comp_id == -1) )){
            tempEdge = createEdge(current_primary_node_id, "16", no_ARM_Holdings_comments, total_comments);
            aGraph.edges.add(tempEdge);
        }
        if (!company_name.equals("RIM")&&(no_RIM_comments != 0) && ((skip_comp_id < 17) || (skip_comp_id == -1) )){
            tempEdge = createEdge(current_primary_node_id, "17", no_RIM_comments, total_comments);
            aGraph.edges.add(tempEdge);
        }      
       return aGraph;
    }
       
    
    public static Graph addAllCompanyNodes(Graph aGraph)
    {
         // Add Nodes to graph 
        Node tempNode = new Node();
        tempNode = createNode("1", "Intel", "Intel", intel_colour, size_intel);
        aGraph.nodes.add(tempNode);
        
        tempNode = new Node();
        tempNode = createNode("2", "Samsung", "Samsung", samsung_colour, size_samsung);
        aGraph.nodes.add(tempNode);
        
        tempNode = new Node();
        tempNode = createNode("3", "Imagination Technologies", "Imagination Technologies", imagination_Technologies_colour, size_imagination_technologies);
        aGraph.nodes.add(tempNode);
        
        tempNode = new Node();
        tempNode = createNode("4", "Imgtec", "Imgtec", imgtec_colour, size_imgtec);
        aGraph.nodes.add(tempNode);
        
        tempNode = new Node();
        tempNode = createNode("5", "ARM", "ARM", ARM_colour, size_ARM);
        aGraph.nodes.add(tempNode);
        
        tempNode = new Node();
        tempNode = createNode("6", "Google", "Google", google_colour, size_google);
        aGraph.nodes.add(tempNode);
        
        tempNode = new Node();
        tempNode = createNode("7", "Apple", "Apple", apple_colour, size_apple);
        aGraph.nodes.add(tempNode);
        
        tempNode = new Node();
        tempNode = createNode("8", "HTC", "HTC", HTC_colour, size_HTC);
        aGraph.nodes.add(tempNode);
        
        tempNode = new Node();
        tempNode = createNode("9", "Sony", "Sony", sony_colour, size_sony);
        aGraph.nodes.add(tempNode);
        
        tempNode = new Node();
        tempNode = createNode("10", "Blackberry", "Blackberry", blackberry_colour, size_blackberry);
        aGraph.nodes.add(tempNode);
        
        tempNode = new Node();
        tempNode = createNode("11", "Nokia", "Nokia", nokia_colour, size_nokia);
        aGraph.nodes.add(tempNode);
        
        tempNode = new Node();
        tempNode = createNode("12", "Motorola", "Motorola", motorola_colour, size_motorola);
        aGraph.nodes.add(tempNode);
        
        tempNode = new Node();
        tempNode = createNode("13", "LG", "LG", LG_colour, size_LG);
        aGraph.nodes.add(tempNode);
        
        tempNode = new Node();
        tempNode = createNode("14", "Microsoft", "Microsoft", microsoft_colour, size_microsoft);
        aGraph.nodes.add(tempNode);
        
        tempNode = new Node();
        tempNode = createNode("15", "IBM", "IBM", IBM_colour, size_IBM);
        aGraph.nodes.add(tempNode);
        
        tempNode = new Node();
        tempNode = createNode("16", "ARM Holdings", "ARM Holdings", ARM_Holdings_colour, size_ARM_Holdings);
        aGraph.nodes.add(tempNode);
        
        tempNode = new Node();
        tempNode = createNode("17", "RIM", "RIM", RIM_colour, size_RIM);
        aGraph.nodes.add(tempNode);
        
        return aGraph;
    }
    
    public static Edge createEdge(String fromID, String toID, int num_of_comments, int total_comments)
    {
        int flow = 0;
        int flow_factor = 1; 
        
        flow = ((int)(((double) num_of_comments/(double) total_comments)* (double) 100 * flow_factor));
        if(flow < 10)
            flow = 10;

        Edge tempEdge = new Edge();
        tempEdge.fromID = fromID;
        tempEdge.toID = toID;
        tempEdge.edgeLabel = Integer.toString(num_of_comments);
        tempEdge.edgeClass = "sun";
        tempEdge.flow = Integer.toString(flow); 
        tempEdge.edgeIcon = "Bad";
        return tempEdge;   
    }
    
    public static String getNodeIdFromCompanyName(String company_name)
    {
        String id = "";
        if (company_name.equals("Intel"))
            id = "1";
        else if (company_name.equals("Samsung"))
            id = "2";
        else if (company_name.equals("Imagination Technologies"))
            id = "3";
        else if (company_name.equals("Imgtec"))
            id = "4";
        else if (company_name.equals("ARM"))
            id = "5";
        else if (company_name.equals("Google"))
            id = "6";
        else if (company_name.equals("Apple"))
            id = "7";
        else if (company_name.equals("HTC"))
            id = "8";
        else if (company_name.equals("Sony"))
            id = "9";
        else if (company_name.equals("Blackberry"))
            id = "10";
        else if (company_name.equals("Nokia"))
            id = "11";
        else if (company_name.equals("Motorola"))
            id = "12";
        else if (company_name.equals("LG"))
            id = "13";
        else if (company_name.equals("Microsoft"))
            id = "14";
        else if (company_name.equals("IBM"))
            id = "15";
        else if (company_name.equals("ARM Holdings"))
            id = "16";
        else if (company_name.equals("RIM"))
            id = "17";
        return id;
    }
    
    public static Node createNode(String id, String name, String desc, String nodeColor, String nodeSize)
    {
        Node tempNode = new Node();
        tempNode.id = id;
        tempNode.name = name;
        tempNode.desc = desc;
        tempNode.nodeClass = "earth";
        tempNode.nodeColor = nodeColor;
        tempNode.nodeSize = nodeSize;
        tempNode.x = "10";
        tempNode.y = "10";
        return tempNode;
    }
    
}
