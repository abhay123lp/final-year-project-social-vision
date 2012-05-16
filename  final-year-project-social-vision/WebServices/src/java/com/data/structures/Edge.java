/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.structures;

/**
 *
 * @author Phil
 */
public class Edge {
     public String fromID;
     public String toID;
     public String edgeLabel;
     public String flow;
     public String edgeClass;
     public String edgeIcon;
     public String color;

    public Edge() {
    }

    public Edge(String fromID, String toID, String edgeLabel, String flow, String edgeClass, String edgeIcon, String color) {
        this.fromID = fromID;
        this.toID = toID;
        this.edgeLabel = edgeLabel;
        this.flow = flow;
        this.edgeClass = edgeClass;
        this.edgeIcon = edgeIcon;
        this.color = color;
    }

}
