package com.company;

import java.util.Scanner;

/**
 * subclass of "Character" class.
 */
public class Priest extends Character {
    private int heal;
    private int maxHealth=healthPoint;

    /**
     * Assign a value of heal.
     * "heal" heal the priest.
     */
    public Priest(){
        Scanner userInput=new Scanner(System.in);
        System.out.println("Give me your heal:");
        heal=userInput.nextInt();
    }
    /**
     * Apply the damage suffered by the priest during the fight.
     * Heal the priest each turn.
     * Override of the "Damage" method of the "Character" class.
     * @param damage the damage that will be taken by the priest
     */
    public void Damage(int damage){
        healthPoint=healthPoint - damage;
        System.out.println();
        if (healthPoint+heal>maxHealth) {
            healthPoint = maxHealth;
        }
        else{
            healthPoint=healthPoint+heal;
            System.out.println(name + " heal himself for " + heal + "HP.");
        }
    }
    /**
     * Give the information of the priest.
     * Override of the "GetInformation" method of the "Character" class.
     */
    public void GetInformation(){
        System.out.println("This character is a Priest and he got " + heal + " heal");
    }
    /**
     * Give the priest information when he's removed.
     * Override of the "GetInformationOnDeath" method of the "Character" class.
     */
    public void GetInformationOnDeath(){
        System.out.println("This character has been deleted, it was a Priest named : " + name);
    }
}