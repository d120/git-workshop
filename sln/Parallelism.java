public class Parallelism {
    public static final int PI = 3;
    
    /**
     * Calculates the area of a circle.
     * @param r radius
     * @return Area of circle with radius r
     */
    public static float areaOfCircle(float r) {
        return PI*r*r;
    }
    
    /**
     * Calculates the volume of a sphere.
     * @param r radius
     * @return Volume of sphere with radius r
     */
    public static float volumeOfSphere(float r) {
        return PI*r*r*r*4/3;
    }
    
    public static void main(String[] args) {
        System.out.println("Area of circle (r=4): " + areaOfCircle(4));
        System.out.println("Volume of sphere (r=2): " + volumeOfSphere(2));
    }
}
