package Entities;

/**
 *
 * @author Moamenovic
 */
public class Flower {

    private int ID;
    private String country;
    private String name;
    
    private ImageEntity image;

    public ImageEntity getImage() {
        return image;
    }

    public void setImage(ImageEntity image) {
        this.image = image;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Flower{" + "ID=" + ID + ", country=" + country + ", name=" + name + '}';
    }
    

}
