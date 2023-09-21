import java.util.Random;

class GenerateRandom {
    public static void main( String args[] ) {
      // Instance of random class
      Random rand = new Random(); 
      // Setting the upper bound to generate the
      // random numbers in specific range
      int upperbound = 25;
      // Generating random values from 0 - 24 
      // using nextInt()
      int int_random = rand.nextInt(upperbound); 
      // Generating random using nextDouble 
      // in 0.0 and 1.0 range
      double double_random = rand.nextDouble();
      // Generating random using nextDouble
      // in 0.0 and 1.0 range
      float float_random = rand.nextFloat();
      
      // Printing the generated random numbers
      System.out.println("Random integer value from 0 to" + (upperbound-1) + " : " + int_random);
      System.out.println("Random float value between 0.0 and 1.0 : " + float_random);
      System.out.println("Random double value between 0.0 and 1.0 : " + double_random);
    }
}
