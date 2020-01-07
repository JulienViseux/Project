package com.company;

import java.util.Random;
import java.util.Scanner;

/**
 * subclass of "Character" class.
 */
public class Thief extends Character {
    private int dodge;
    private int critical;
    private int maxDamage;
    private int baseDamage = damage;

    /**
     * Apply a value of dodge and critical.
     * Set the base damage of the thief.
     * "dodge" represents the dodge rate of the thief.
     * "critical" represents the critical rate of the thief.
     */
    public Thief(){
        System.out.println("Give me your dodge /100");
        Scanner userInput=new Scanner(System.in);
        dodge=userInput.nextInt();
        System.out.println("Give me your critical");
        userInput=new Scanner(System.in);
        critical=userInput.nextInt();
        maxDamage=damage;
    }
    /**
     * Modify the thief's damage during combat.
     * Double damage when the thief make a critical damage.
     * @return the damage the thief will do with modifier
     */
    public int GetDamageInFight(){
        damage=maxDamage;
        var rand2 = new Random().nextInt(100);
        if (rand2 <= critical){
            damage = baseDamage * 2;
            return damage;
        }
        else {
            return damage;
        }
    }
    /**
     * Apply the damage suffered by the thief during the fight.
     * Override of the "Damage" method of the "Character" class.
     * Dodge the attack when the thief successfully dodge.
     * @param damage the damage the thief will take
     */
    public void Damage(int damage){
        var rand1 = new Random().nextInt(100);
        if (rand1 <= dodge){
            System.out.println("attack dodged");
        }
        else {
            healthPoint=healthPoint - damage;
        }
    }
    /**
     * Give the information of the thief.
     * Override of the "GetInformation" method of the "Character" class.
     */
    public void GetInformation(){
        System.out.println("This character is a thief and he got " + dodge + " dodge and " + critical + " critical");
    }
    /**
     * Reset all modify stats of the thief.
     */
    public void ResetStats(){
        healthPoint=maxHealthPoint;
        damage=maxDamage;
    }
    /**
     * Give the thief information when he's removed.
     * Override of the "GetInformationOnDeath" method of the "Character" class.
     */
    public void GetInformationOnDeath(){
        System.out.println("This character has been deleted, it was a Thief named : " + name);
    }
}
