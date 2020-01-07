package com.company;

import java.util.Scanner;

/**
 *Class that create a basic character and his properties.
 * Class parent of classes Priest,Thief,Warrior and Wizard
 */
public class Character {
    protected String name;
    protected int damage;
    protected int healthPoint;
    /**
     * initiative is used to know witch fighter will go first
     */
    protected int initiative;
    protected int maxHealthPoint;

    /**
     * Constructor of the class Character and base constructor of her child.
     */
    public Character(){
        Getters();

    }

    /**
     * Method that is called by the constructor and is used to set all the properties such as name.
     */
    private void Getters(){
        System.out.println("Give me your name");
        Scanner userInput = new Scanner(System.in);
        name = userInput.nextLine();
        System.out.println("Give me your damage");
        userInput = new Scanner(System.in);
        damage = userInput.nextInt();
        System.out.println("Give me your Health Point");
        userInput = new Scanner(System.in);
        healthPoint = userInput.nextInt();
        System.out.println("Give me your Initiative");
        userInput = new Scanner(System.in);
        initiative = userInput.nextInt();
        maxHealthPoint=healthPoint;
    }

    /**
     *Method that is used to take damage in fight
     * @param damage the amount of damage that is taken by the character
     */
    public void Damage(int damage){
        healthPoint=healthPoint - damage;
    }

    /**
     *Method used to give the name of the character
     * @return As string the name of the character
     */
    public String GetName(){
        return name;
    }

    /**
     * Method used to give the damage of the character
     * @return As int the damage of the character
     */
    public int GetDamage(){
        return damage;
    }
    /**
     * Method used to give the damage of the character in the fight
     * @return As int the damage of the character with modifier in fight
     */
    public int GetDamageInFight(){
        return damage;
    }
    /**
     * Method used to give the HealthPoint of the character
     * @return As int the HealthPoint of the character
     */
    public int GetHealthPoint(){
        return healthPoint;
    }
    /**
     * Method used to give the initiative of the character
     * @return As int the initiative of the character
     */
    public int GetInitiative(){
        return initiative;
    }

    /**
     * Method used to print the class of the character
     */
    public void GetInformation(){
        System.out.println("This character is a basic character");
    }

    /**
     * Method used after combat to reset stats
     */
    public void ResetStats(){
        healthPoint=maxHealthPoint;
    }

    /**
     * Method used on death to give the name and the class of the character
     */
    public void GetInformationOnDeath(){
        System.out.println("This character has been deleted, it was a basic character named : " + name);
    }
}
