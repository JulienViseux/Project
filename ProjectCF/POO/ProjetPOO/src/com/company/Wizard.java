package com.company;

import java.util.Scanner;

/**
 * subclass of "Character" class.
 */
public class Wizard extends Character{
    int  magicDamage;
    int maxMagicDamage;
    int maxDamage;

    /**
     * Assign a value of magic damage.
     * Set the base damage, base health and base magic damage of the wizard.
     * "magicDamage" add damage to base damage.
     */
    public Wizard(){
        System.out.println("Give me your magic damage");
        Scanner userInput=new Scanner(System.in);
        magicDamage=userInput.nextInt();
        maxMagicDamage=magicDamage;
        maxDamage=damage;
    }
    /**
     * Modify the mage's damage during combat.
     * Halve magic damage each turn.
     * @return int the damage the wizard will do with modifier
     */
    public int GetDamageInFight(){
        damage=maxDamage;
        damage += magicDamage;
        magicDamage=magicDamage/2;
        return damage;
    }
    /**
     * Give the information of the wizard.
     * Override of the "GetInformation" method of the "Character" class.
     */
    public void GetInformation(){
        System.out.println("This character is a Wizard and he got " + magicDamage + " magicDamage");
    }
    /**
     * Reset all modify stats of the wizard.
     */
    public void ResetStats(){
        healthPoint=maxHealthPoint;
        magicDamage=maxMagicDamage;
        damage=maxDamage;
    }
    /**
     * Give the wizard information when he's removed.
     * Override of the "GetInformationOnDeath" method of the "Character" class.
     */
    public void GetInformationOnDeath(){
        System.out.println("This character has been deleted, it was a Wizard named : " + name);
    }
}
