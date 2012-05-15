/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.structures;

/**
 *
 * @author Phil
 */
public class Node {
    
    public String id;
    public String name;
    public String  desc;
    public String nodeColor;
    public String nodeSize;
    public String nodeClass;
    public String nodeIcon;
    public String x;
    public String y;

    public Node() {
    }

    public Node(String id, String name, String desc, String nodeColor, String nodeSize, String nodeClass, String nodeIcon, String x, String y) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.nodeColor = nodeColor;
        this.nodeSize = nodeSize;
        this.nodeClass = nodeClass;
        this.nodeIcon = nodeIcon;
        this.x = x;
        this.y = y;
    }
    
    
}
