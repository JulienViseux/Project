package com.company;

import java.util.Scanner;

/**
 * subclass of "Character" class.
 */
public class Warrior extends Character {
    private int shield;

    /**
     * Apply a value of shield
     * "shield" reduce the damage suffered by the warrior.
     */
    public Warrior(){
        System.out.println("Give me your shield");
        Scanner userInput=new Scanner(System.in);
        shield=userInput.nextInt();
    }
    /**
     * Apply the damage suffered by the warrior during the fight.
     * Reduces the damage suffered by the warrior according to the value of his shield.
     * Override of the "Damage" method of the "Character" class.
     * @param damage the damage that the warrior will take
     */
    public void Damage(int damage){
        if (damage<=shield){
            System.out.println("damage blocked");
        }
        else{
            System.out.println(shield + "damage blocked");
            damage=damage-shield;
            healthPoint=healthPoint - damage;
        }

    }
    /**
     * Give the information of the warrior.
     * Override of the "GetInformation" method of the "Character" class.
     */
    public void GetInformation(){
        System.out.println("This character is a Warrior and he got " + shield + " shield");
    }
    /**
     * Give the warrior information when he's removed.
     * Override of the "GetInformationOnDeath" method of the "Character" class.
     */
    public void GetInformationOnDeath(){
        System.out.println("This character has been deleted, it was a Warrior named : " + name);
    }

}
