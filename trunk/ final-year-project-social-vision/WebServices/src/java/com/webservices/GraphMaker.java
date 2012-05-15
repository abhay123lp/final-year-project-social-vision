/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webservices;

import com.data.structures.Edge;
import com.data.structures.Graph;
import com.data.structures.Node;

/**
 *
 * @author Phil
 */
public class GraphMaker {
    
    public static String generateGraphXML(Graph aGraph)
    {
        String graphXml = "<Graph> \n \t";
        String tempString;
        
        for(int i =0; i<aGraph.nodes.size();i++)
        {
            tempString = convertNodeToXML(aGraph.nodes.get(i));
            graphXml = graphXml + tempString;    
        }
        
        for(int i =0; i<aGraph.edges.size();i++)
        {
            tempString = convertEdgeToXML(aGraph.edges.get(i));
            graphXml = graphXml + tempString;
        }
            
        
        graphXml = graphXml + "\n </Graph>";
        return graphXml;
    }
    
    public static String convertNodeToXML(Node aNode)
    {
        String nodeXml = "<Node ";
        String tempString; 
        
        // Go through all the properties of a node
        
        // ID 
        tempString = covertFieldValueToXml("id",aNode.id);
        nodeXml = nodeXml + tempString;
        
        // Name
        tempString = covertFieldValueToXml("name",aNode.name);
        nodeXml = nodeXml + tempString;
        
        // desc
        tempString = covertFieldValueToXml("desc",aNode.desc);
        nodeXml = nodeXml + tempString;
        
        // nodeColor
        tempString = covertFieldValueToXml("nodeColor",aNode.nodeColor);
        nodeXml = nodeXml + tempString;
        
        // nodeSize
        tempString = covertFieldValueToXml("nodeSize",aNode.nodeSize);
        nodeXml = nodeXml + tempString;
        
        // nodeClass
        tempString = covertFieldValueToXml("nodeClass",aNode.nodeClass);
        nodeXml = nodeXml + tempString;
        
        // nodeIcon
        tempString = covertFieldValueToXml("nodeIcon",aNode.nodeIcon);
        nodeXml = nodeXml + tempString;
        
        // x
        tempString = covertFieldValueToXml("x",aNode.x);
        nodeXml = nodeXml + tempString;
        
        // y
        tempString = covertFieldValueToXml("y",aNode.y);
        nodeXml = nodeXml + tempString;
        
        nodeXml = nodeXml + " /> \n \t";
        
        return nodeXml;
    }
    
    public static String convertEdgeToXML(Edge aEdge)
    {
        String edgeXml = "<Edge ";
        String tempString; 

        // fromID
        tempString = covertFieldValueToXml("fromID",aEdge.fromID);
        edgeXml = edgeXml + tempString;
        
        // toID
        tempString = covertFieldValueToXml("toID",aEdge.toID);
        edgeXml = edgeXml + tempString;
        
        // edgeLabel
        tempString = covertFieldValueToXml("edgeLabel",aEdge.edgeLabel);
        edgeXml = edgeXml + tempString;
        
        // flow
        tempString = covertFieldValueToXml("flow",aEdge.flow);
        edgeXml = edgeXml + tempString;
        
        // edgeClass
        tempString = covertFieldValueToXml("edgeClass",aEdge.edgeClass);
        edgeXml = edgeXml + tempString;
        
        // edgeIcon
        tempString = covertFieldValueToXml("edgeIcon",aEdge.edgeIcon);
        edgeXml = edgeXml + tempString;
        
        edgeXml = edgeXml + " /> \n \t";
        return edgeXml;
    }
    
    public static String covertFieldValueToXml(String field_name, String field_value)
    {
        
        return field_name + "=\"" + field_value + "\" "; 
    }
}
